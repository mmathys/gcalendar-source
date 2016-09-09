.class Lcom/android/datetimepicker/date/DayPickerView$1;
.super Ljava/lang/Object;
.source "DayPickerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/datetimepicker/date/DayPickerView;->postSetSelection(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/datetimepicker/date/DayPickerView;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/datetimepicker/date/DayPickerView;I)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/datetimepicker/date/DayPickerView$1;->this$0:Lcom/android/datetimepicker/date/DayPickerView;

    iput p2, p0, Lcom/android/datetimepicker/date/DayPickerView$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/datetimepicker/date/DayPickerView$1;->this$0:Lcom/android/datetimepicker/date/DayPickerView;

    iget v1, p0, Lcom/android/datetimepicker/date/DayPickerView$1;->val$position:I

    invoke-virtual {v0, v1}, Lcom/android/datetimepicker/date/DayPickerView;->setSelection(I)V

    .line 256
    return-void
.end method
