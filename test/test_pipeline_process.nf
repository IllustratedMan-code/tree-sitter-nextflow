

process test {

	input:
	val x
	
	output:
	path 'chunk_*'

	script:
	"""
	printf ${x}
	"""
	
}


workflow {
	ch_str = test("x")
}
