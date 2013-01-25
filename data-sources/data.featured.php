<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcefeatured extends SectionDatasource{

		public $dsParamROOTELEMENT = 'featured';
		public $dsParamORDER = 'asc';
		public $dsParamPAGINATERESULTS = 'yes';
		public $dsParamLIMIT = '5';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'order';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		

		public $dsParamINCLUDEDELEMENTS = array(
				'project: title',
				'project: images: image',
				'project: client',
				'project: date'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'featured',
				'author' => array(
					'name' => 'David McCormick',
					'website' => 'http://localhost:8888/adamlaycock',
					'email' => 'david@sumnoise.com'),
				'version' => 'Symphony 2.3',
				'release-date' => '2012-09-21T09:12:08+00:00'
			);
		}

		public function getSource(){
			return '4';
		}

		public function allowEditorToParse(){
			return true;
		}

	}
