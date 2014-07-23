eventCreateWarStart = { name, stagingDir ->
    def process = "gulp build".execute()
    process.consumeProcessOutput(System.out, System.err)
}
