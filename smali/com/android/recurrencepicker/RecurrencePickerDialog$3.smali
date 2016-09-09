.class Lcom/android/recurrencepicker/RecurrencePickerDialog$3;
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
    .line 777
    iput-object p1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$3;->this$0:Lcom/android/recurrencepicker/RecurrencePickerDialog;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/recurrencepicker/RecurrencePickerDialog$minMaxTextWatcher;-><init>(Lcom/android/recurrencepicker/RecurrencePickerDialog;III)V

    return-void
.end method


# virtual methods
.method onChange(I)V
    .locals 1

    .prologue
    .line 780
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$3;->this$0:Lcom/android/recurrencepicker/RecurrencePickerDialog;

    # getter for: Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;
    invoke-static {v0}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->access$100(Lcom/android/recurrencepicker/RecurrencePickerDialog;)Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    move-result-object v0

    iget v0, v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->endCount:I

    if-eq v0, p1, :cond_0

    .line 781
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$3;->this$0:Lcom/android/recurrencepicker/RecurrencePickerDialog;

    # getter for: Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;
    invoke-static {v0}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->access$100(Lcom/android/recurrencepicker/RecurrencePickerDialog;)Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    move-result-object v0

    iput p1, v0, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->endCount:I

    .line 782
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$3;->this$0:Lcom/android/recurrencepicker/RecurrencePickerDialog;

    # invokes: Lcom/android/recurrencepicker/RecurrencePickerDialog;->updateEndCountText()V
    invoke-static {v0}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->access$600(Lcom/android/recurrencepicker/RecurrencePickerDialog;)V

    .line 783
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$3;->this$0:Lcom/android/recurrencepicker/RecurrencePickerDialog;

    # getter for: Lcom/android/recurrencepicker/RecurrencePickerDialog;->mEndCount:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->access$700(Lcom/android/recurrencepicker/RecurrencePickerDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestLayout()V

    .line 785
    :cond_0
    return-void
.end method
