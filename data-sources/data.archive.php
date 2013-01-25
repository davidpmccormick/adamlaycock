<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcearchive extends SectionDatasource{

		public $dsParamROOTELEMENT = 'archive';
		public $dsParamORDER = 'asc';
		public $dsParamPAGINATERESULTS = 'yes';
		public $dsParamLIMIT = '20';
		public $dsParamSTARTPAGE = '{$page}';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'order';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		

		

		public $dsParamINCLUDEDELEMENTS = array(
				'system:pagination',
				'title',
				'image'
		);
		

		public function __construct($env=NULL, $process_params=true){
			parent::__construct($env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'archive',
				'author' => array(
					'name' => 'David McCormick',
					'website' => 'http://www.adamlaycock.com/beta',
					'email' => 'david@sumnoise.com'),
				'version' => 'Symphony 2.3',
				'release-date' => '2012-09-28T23:39:09+00:00'
			);
		}

		public function getSource(){
			return '7';
		}

		public function allowEditorToParse(){
			return true;
		}

	}
