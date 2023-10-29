import Groovy.Person

class PersonMain{
    static main(args) {
        Person person = new Person ();
        println(person.eligibleForVote("Jhon",19));
    }
}