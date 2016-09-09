.class Lcom/android/datetimepicker/time/TimePickerDialog$2;
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
    .line 258
    iput-object p1, p0, Lcom/android/datetimepicker/time/TimePickerDialog$2;->this$0:Lcom/android/datetimepicker/time/TimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 261
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog$2;->this$0:Lcom/android/datetimepicker/time/TimePickerDialog;

    const/4 v1, 0x0

    # invokes: Lcom/android/datetimepicker/time/TimePickerDialog;->setCurrentItemShowing(IZZZ)V
    invoke-static {v0, v2, v2, v1, v2}, Lcom/android/datetimepicker/time/TimePickerDialog;->access$100(Lcom/android/datetimepicker/time/TimePickerDialog;IZZZ)V

    .line 262
    iget-object v0, p0, Lcom/android/datetimepicker/time/TimePickerDialog$2;->this$0:Lcom/android/datetimepicker/time/TimePickerDialog;

    invoke-virtual {v0}, Lcom/android/datetimepicker/time/TimePickerDialog;->tryVibrate()V

    .line 263
    return-void
.end method
