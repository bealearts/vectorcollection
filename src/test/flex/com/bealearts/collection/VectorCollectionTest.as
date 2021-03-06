/**
 *
 * Copyright (c) 2010, David Beale
 * 
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 */
package com.bealearts.collection
{	
	
	import flash.utils.IDataInput;
	
	import flexunit.framework.Assert;
	
	import mx.collections.IList;
	
	import org.hamcrest.object.nullValue;
	
	import spark.primitives.Rect;
	
	public class VectorCollectionTest
	{		
		

		public function VectorCollectionTest()
		{
			
		}
		
		
		[Before]
		public function setUp():void
		{

		}
		
		[After]
		public function tearDown():void
		{
			this.vectorCollection = null;
		}
		
		[BeforeClass]
		public static function setUpBeforeClass():void
		{
		}
		
		[AfterClass]
		public static function tearDownAfterClass():void
		{
		}
		
		/* TESTS */
		
		[Test]
		public function testReadExternal():void
		{
			var mockList:VectorListMock = new VectorListMock();
			
			this.vectorCollection = new VectorCollection();
			this.vectorCollection.list = mockList;
			
			Assert.assertFalse('Mock List method should not have been called yet', mockList.called);
			this.vectorCollection.readExternal(null);
			Assert.assertTrue('Mock list method should have been called', mockList.called);
		}
		
		[Test]
		public function testRemoveItem():void
		{
			var mockList:VectorListMock = new VectorListMock();
			
			this.vectorCollection = new VectorCollection();
			this.vectorCollection.list = mockList;
				
			Assert.assertFalse('Mock List method should not have been called yet', mockList.called);
			this.vectorCollection.removeItem(new Object());
			Assert.assertTrue('Mock list method should have been called', mockList.called);
		}
		
		[Test]
		public function testGet_source():void
		{
			this.vectorCollection = new VectorCollection();
			
			Assert.assertObjectEquals('Source does not match the default value', new Vector.<Object>, this.vectorCollection.source);
		}
		
		[Test]
		public function testSet_source():void
		{
			this.vectorCollection = new VectorCollection();
			
			var strVector:Vector.<String> = new Vector.<String>;
			this.vectorCollection.source = strVector;
			Assert.assertStrictlyEquals('Source does not match the set value', strVector, this.vectorCollection.source); 
		}
		
		[Test]
		public function testVectorCollection():void
		{
			this.vectorCollection = new VectorCollection();
		}
		
		[Test]
		public function testWriteExternal():void
		{
			var mockList:VectorListMock = new VectorListMock();
			
			this.vectorCollection = new VectorCollection();
			this.vectorCollection.list = mockList;
			
			Assert.assertFalse('Mock List method should not have been called yet', mockList.called);
			this.vectorCollection.writeExternal(null);
			Assert.assertTrue('Mock list method should have been called', mockList.called);
		}
		
		
		/* PRIVATE */
		
		private var vectorCollection:VectorCollection = null;

	}
}