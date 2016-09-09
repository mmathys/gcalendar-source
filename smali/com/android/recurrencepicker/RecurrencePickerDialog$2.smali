.class Lcom/android/recurrencepicker/RecurrencePickerDialog$2;
.super Lcom/android/recurrencepicker/RecurrencePickerDialog$minMaxTextWatcher;
.source "RecurrencePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/recurrencepicker/RecurrencePickerDialog;->initUi(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/recurrencepicker/RecurrencePickerDialog;


# direct methods
.method constructor <init>(Lcom/android/recurrencepicker/RecurrencePickerDialog;III)V
    .locals 0

    .prologue
    .line 751
    iput-object p1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$2;->this$0:Lcom/android/recurrencepicker/RecurrencePickerDialog;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/recurrencepicker/RecurrencePickerDialog$minMaxTextWatcher;-><init>(Lcom/android/recurrencepicker/RecurrencePickerDialog;III)V

    return-void
.end method


# virtual methods
.method onChange(I)V
    .locals 2

    .prologue
    .line 754
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$2;->this$0:Lcom/android/recurrencepicker/RecurrencePickerDialog;

    # getter for: Lcom/android/recurrencepicker/RecurrencePickerDialog;->mIntervalResId:I
    invoke-static {v0}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->access$300(Lcom/android/recurrencepicker/RecurrencePickerDialog;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$2;->this$0:Lcom/android/recurrencepicker/RecurrencePickerDialog;

    # getter for: Lcom/android/recurrencepicker/RecurrencePickerDialog;->mInterval:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->access$400(Lcom/android/recurrencepicker/RecurrencePickerDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 755
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$2;->this$0:Lcom/android/recurrencepicker/RecurrencePickerDialog;

    # getter for: Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;
    invoke-static {v0}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->access$100(Lcom/android/recurrencepicker/RecurrencePickerDialog;)Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    move-result-object v0

    iput p1, v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->interval:I

    .line 756
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$2;->this$0:Lcom/android/recurrencepicker/RecurrencePickerDialog;

    # invokes: Lcom/android/recurrencepicker/RecurrencePickerDialog;->updateIntervalText()V
    invoke-static {v0}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->access$500(Lcom/android/recurrencepicker/RecurrencePickerDialog;)V

    .line 757
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$2;->this$0:Lcom/android/recurrencepicker/RecurrencePickerDialog;

    # getter for: Lcom/android/recurrencepicker/RecurrencePickerDialog;->mInterval:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->access$400(Lcom/android/recurrencepicker/RecurrencePickerDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestLayout()V

    .line 759
    :cond_0
    return-void
.end method
