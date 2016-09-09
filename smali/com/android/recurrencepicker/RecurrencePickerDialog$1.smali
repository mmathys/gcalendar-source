.class Lcom/android/recurrencepicker/RecurrencePickerDialog$1;
.super Ljava/lang/Object;
.source "RecurrencePickerDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
.method constructor <init>(Lcom/android/recurrencepicker/RecurrencePickerDialog;)V
    .locals 0

    .prologue
    .line 734
    iput-object p1, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$1;->this$0:Lcom/android/recurrencepicker/RecurrencePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 738
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$1;->this$0:Lcom/android/recurrencepicker/RecurrencePickerDialog;

    # getter for: Lcom/android/recurrencepicker/RecurrencePickerDialog;->mModel:Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;
    invoke-static {v0}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->access$100(Lcom/android/recurrencepicker/RecurrencePickerDialog;)Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;

    move-result-object v1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 739
    :goto_0
    iput v0, v1, Lcom/android/recurrencepicker/RecurrencePickerDialog$RecurrenceModel;->recurrenceState:I

    .line 740
    iget-object v0, p0, Lcom/android/recurrencepicker/RecurrencePickerDialog$1;->this$0:Lcom/android/recurrencepicker/RecurrencePickerDialog;

    # invokes: Lcom/android/recurrencepicker/RecurrencePickerDialog;->togglePickerOptions()V
    invoke-static {v0}, Lcom/android/recurrencepicker/RecurrencePickerDialog;->access$200(Lcom/android/recurrencepicker/RecurrencePickerDialog;)V

    .line 741
    return-void

    .line 739
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
