package main

import (
	"fmt"
	"os"
	"os/exec"
)

func main() {

	args := []string{"script", "-q", "-e", "-c", "false", "/dev/null"}

	cmd := exec.Command(args[0], args[1:]...)
	fmt.Println("running command", args)
	err := cmd.Run()
	if err != nil {
		fmt.Printf("exec was unsuccessfull: %v this is expected behaviour\n", err)
		os.Exit(0)
	}

	fmt.Printf("command was a success with status code %d - this is an error\n", cmd.ProcessState.ExitCode())
	os.Exit(1)
}
