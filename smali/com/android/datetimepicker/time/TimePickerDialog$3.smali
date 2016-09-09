.class Lcom/android/datetimepicker/time/TimePickerDialog$3;
.super Ljava/lang/Object;
.source "TimePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/datetimepicker/time/TimePickerDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/datetimepicker/time/TimePickerDialog;


# direct methods
.method constructor <init>(Lcom/android/datetimepicker/time/TimePickerDialog;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/datetimepicker/time/TimePickerDialog$3;->this$0:Lcom/android/datetimepicker/time/TimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog$3;->this$0:Lcom/android/datetimepicker/time/TimePickerDialog;

    # getter for: Lcom/android/datetimepicker/time/TimePickerDialog;->mInKbMode:Z
    invoke-static {v0}, Lcom/android/datetimepicker/time/TimePickerDialog;->access$200(Lcom/android/datetimepicker/time/TimePickerDialog;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog$3;->this$0:Lcom/android/datetimepicker/time/TimePickerDialog;

    # invokes: Lcom/android/datetimepicker/time/TimePickerDialog;->isTypedTimeFullyLegal()Z
    invoke-static {v0}, Lcom/android/datetimepicker/time/TimePickerDialog;->access$300(Lcom/android/datetimepicker/time/TimePickerDialog;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog$3;->this$0:Lcom/android/datetimepicker/time/TimePickerDialog;

    const/4 v1, 0x0

    # invokes: Lcom/android/datetimepicker/time/TimePickerDialog;->finishKbMode(Z)V
    invoke-static {v0, v1}, Lcom/android/datetimepicker/time/TimePickerDialog;->access$400(Lcom/android/datetimepicker/time/TimePickerDialog;Z)V

    .line 275
    :goto_0
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog$3;->this$0:Lcom/android/datetimepicker/time/TimePickerDialog;

    # getter for: Lcom/android/datetimepicker/time/TimePickerDialog;->mCallback:Lcom/android/datetimepicker/time/TimePickerDialog$OnTimeSetListener;
    invoke-static {v0}, Lcom/android/datetimepicker/time/TimePickerDialog;->access$500(Lcom/android/datetimepicker/time/TimePickerDialog;)Lcom/android/datetimepicker/time/TimePickerDialog$OnTimeSetListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog$3;->this$0:Lcom/android/datetimepicker/time/TimePickerDialog;

    # getter for: Lcom/android/datetimepicker/time/TimePickerDialog;->mCallback:Lcom/android/datetimepicker/time/TimePickerDialog$OnTimeSetListener;
    invoke-static {v0}, Lcom/android/datetimepicker/time/TimePickerDialog;->access$500(Lcom/android/datetimepicker/time/TimePickerDialog;)Lcom/android/datetimepicker/time/TimePickerDialog$OnTimeSetListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/datetimepicker/time/TimePickerDialog$3;->this$0:Lcom/android/datetimepicker/time/TimePickerDialog;

    # getter for: Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;
    invoke-static {v1}, Lcom/android/datetimepicker/time/TimePickerDialog;->access$600(Lcom/android/datetimepicker/time/TimePickerDialog;)Lcom/android/datetimepicker/time/RadialPickerLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/android/datetimepicker/time/TimePickerDialog$3;->this$0:Lcom/android/datetimepicker/time/TimePickerDialog;

    .line 277
    # getter for: Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;
    invoke-static {v2}, Lcom/android/datetimepicker/time/TimePickerDialog;->access$600(Lcom/android/datetimepicker/time/TimePickerDialog;)Lcom/android/datetimepicker/time/RadialPickerLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getHours()I

    move-result v2

    iget-object v3, p0, Lcom/android/datetimepicker/time/TimePickerDialog$3;->this$0:Lcom/android/datetimepicker/time/TimePickerDialog;

    # getter for: Lcom/android/datetimepicker/time/TimePickerDialog;->mTimePicker:Lcom/android/datetimepicker/time/RadialPickerLayout;
    invoke-static {v3}, Lcom/android/datetimepicker/time/TimePickerDialog;->access$600(Lcom/android/datetimepicker/time/TimePickerDialog;)Lcom/android/datetimepicker/time/RadialPickerLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v3

    .line 276
    invoke-interface {v0, v1, v2, v3}, Lcom/android/datetimepicker/time/TimePickerDialog$OnTimeSetListener;->onTimeSet(Lcom/android/datetimepicker/time/RadialPickerLayout;II)V

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog$3;->this$0:Lcom/android/datetimepicker/time/TimePickerDialog;

    invoke-virtual {v0}, Lcom/android/datetimepicker/time/TimePickerDialog;->dismiss()V

    .line 280
    return-void

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog$3;->this$0:Lcom/android/datetimepicker/time/TimePickerDialog;

    invoke-virtual {v0}, Lcom/android/datetimepicker/time/TimePickerDialog;->tryVibrate()V

    goto :goto_0
.end method
