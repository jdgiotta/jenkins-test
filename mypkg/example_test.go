package mypkg

import "testing"

func TestDoSomething(t *testing.T) {
	s := DoSomething()
	if s != "do it" {
		t.Error("failed test")
	}
}
