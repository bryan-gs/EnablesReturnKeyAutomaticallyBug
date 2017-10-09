# EnablesReturnKeyAutomaticallyBug
Repo demonstrating enablesReturnKeyAutomatically isn't considered when using UITextInput's replace(_ range: UITextRange, withText text: String)

## Replicating:

Observe ViewController.swift lines 23 and 26:
`textView.enablesReturnKeyAutomatically = true`

Observe ViewController.swift lines 38 and 43:
`textView.replace(textView.selectedTextRange!, withText: "Hello")`

1. Run the project
2. Make sure either the UITextField or UITextView is the first responder and keyboard is up.
3. Observe keyboard's search button is greyed out.
4. Tap the "Tap Me" button next to the focused field.
5. Observe text is inserted but the search key remains disabled.

Note that if you tap the textview/textfield now the search key will enable automatically, suggesting that this should be happening when the text is inserted as well.



## Expected behaviour:

Search/Return key should be enabled automatically when text is inserted. This behaves correctly when inserted text by some other means, for example `textView.text = "Hello"` will cause the search key to enable automatically.
