potluck.controller('CategoryChildCtrl',
	function($scope, $cacheFactory,$stateParams, UtilitiesFactory){


		var cache = $cacheFactory.get('potluck');


		
		$scope.currentNode = UtilitiesFactory.findById(
			cache.get('categories'),
			$stateParams.categoryId
		);

	});
