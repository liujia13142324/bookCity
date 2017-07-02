package com.l.bookCity.context;

import java.io.File;
import java.io.IOException;

import org.apache.lucene.analysis.Analyzer;
import org.apache.lucene.index.CorruptIndexException;
import org.apache.lucene.index.IndexWriter;
import org.apache.lucene.index.IndexWriterConfig;
import org.apache.lucene.search.IndexSearcher;
import org.apache.lucene.search.NRTManager;
import org.apache.lucene.search.NRTManagerReopenThread;
import org.apache.lucene.search.SearcherManager;
import org.apache.lucene.search.SearcherWarmer;
import org.apache.lucene.store.Directory;
import org.apache.lucene.store.FSDirectory;
import org.apache.lucene.util.Version;

import com.chenlb.mmseg4j.analysis.MMSegAnalyzer;

public class LuceneContext {

	private static LuceneContext instance;
	private static IndexWriter writer;
	private static Analyzer analyzer;
	private static NRTManager nrtMgr;
	private static SearcherManager mgr;	
	private static Directory directory;
	private static String dirctoryPath  = "D:\\bookCity\\index";
	private static Version version = Version.LUCENE_35;
	private static MMSegAnalyzer ms;

	private LuceneContext(){}
	
	public static LuceneContext getInstance(){
		if(instance == null){
			try {
				init();
			} catch (InstantiationException e) {
				e.printStackTrace();
			} catch (IllegalAccessException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			instance = new LuceneContext();
		}
		return instance;
	}

	private static void init() throws IOException, InstantiationException, IllegalAccessException {
		
		File f = new File(dirctoryPath);
		
		if(!f.exists()){
			f.mkdir();
		}
		
		directory = FSDirectory.open(new File(dirctoryPath));
	
		String dataUri =LuceneContext.class.getClassLoader().getResource("data").getPath();
		
		ms = new MMSegAnalyzer(dataUri);
		
		writer = new IndexWriter(directory,new IndexWriterConfig(version, ms));
		
		nrtMgr = new NRTManager(writer,new SearcherWarmer() {
			
			@Override
			public void warm(IndexSearcher s) throws IOException {
				System.out.println("reopen index");
			}
		});
		
		mgr = nrtMgr.getSearcherManager(true);
		
		NRTManagerReopenThread reopenThread = new NRTManagerReopenThread(nrtMgr, 5.0, 0.025);
	
		reopenThread.setName("NRTManager reopen thread");
		
		reopenThread.setDaemon(true);
		
		reopenThread.start();
	}
	
	public IndexSearcher getSearcher(){
		
		return mgr.acquire();
	}
	
	public void releaseSearcher(IndexSearcher indexSeacher){
		try {
			mgr.release(indexSeacher);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	
	public void commitIndex(){
		try {
			writer.commit();
		} catch (CorruptIndexException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public NRTManager getNRTManager(){
		return nrtMgr;
	}
	
	public  Version getVersion(){
		return version;
	}
	
	public Analyzer getAnalyzer(){
		return ms;
	}
}
