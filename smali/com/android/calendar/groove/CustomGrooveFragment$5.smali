.class Lcom/android/calendar/groove/CustomGrooveFragment$5;
.super Ljava/lang/Object;
.source "CustomGrooveFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/groove/CustomGrooveFragment;->createSuggestionList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/groove/CustomGrooveFragment;

.field final synthetic val$suggestion:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/calendar/groove/CustomGrooveFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/calendar/groove/CustomGrooveFragment$5;->this$0:Lcom/android/calendar/groove/CustomGrooveFragment;

    iput-object p2, p0, Lcom/android/calendar/groove/CustomGrooveFragment$5;->val$suggestion:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/calendar/groove/CustomGrooveFragment$5;->this$0:Lcom/android/calendar/groove/CustomGrooveFragment;

    # getter for: Lcom/android/calendar/groove/CustomGrooveFragment;->mEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/calendar/groove/CustomGrooveFragment;->access$100(Lcom/android/calendar/groove/CustomGrooveFragment;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/groove/CustomGrooveFragment$5;->val$suggestion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v0, p0, Lcom/android/calendar/groove/CustomGrooveFragment$5;->this$0:Lcom/android/calendar/groove/CustomGrooveFragment;

    iget-object v1, p0, Lcom/android/calendar/groove/CustomGrooveFragment$5;->this$0:Lcom/android/calendar/groove/CustomGrooveFragment;

    # getter for: Lcom/android/calendar/groove/CustomGrooveFragment;->mType:I
    invoke-static {v1}, Lcom/android/calendar/groove/CustomGrooveFragment;->access$300(Lcom/android/calendar/groove/CustomGrooveFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/android/calendar/groove/CustomGrooveFragment$5;->this$0:Lcom/android/calendar/groove/CustomGrooveFragment;

    # getter for: Lcom/android/calendar/groove/CustomGrooveFragment;->mEditText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/calendar/groove/CustomGrooveFragment;->access$100(Lcom/android/calendar/groove/CustomGrooveFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/calendar/groove/CustomGrooveFragment;->saveSelection(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/calendar/groove/CustomGrooveFragment;->access$400(Lcom/android/calendar/groove/CustomGrooveFragment;ILjava/lang/String;)V

    .line 190
    return-void
.end method
