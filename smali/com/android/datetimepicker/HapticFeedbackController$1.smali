.class Lcom/android/datetimepicker/HapticFeedbackController$1;
.super Landroid/database/ContentObserver;
.source "HapticFeedbackController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/datetimepicker/HapticFeedbackController;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/datetimepicker/HapticFeedbackController;


# direct methods
.method constructor <init>(Lcom/android/datetimepicker/HapticFeedbackController;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/datetimepicker/HapticFeedbackController$1;->this$0:Lcom/android/datetimepicker/HapticFeedbackController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/datetimepicker/HapticFeedbackController$1;->this$0:Lcom/android/datetimepicker/HapticFeedbackController;

    iget-object v1, p0, Lcom/android/datetimepicker/HapticFeedbackController$1;->this$0:Lcom/android/datetimepicker/HapticFeedbackController;

    # getter for: Lcom/android/datetimepicker/HapticFeedbackController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/datetimepicker/HapticFeedbackController;->access$100(Lcom/android/datetimepicker/HapticFeedbackController;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/android/datetimepicker/HapticFeedbackController;->checkGlobalSetting(Landroid/content/Context;)Z
    invoke-static {v1}, Lcom/android/datetimepicker/HapticFeedbackController;->access$200(Landroid/content/Context;)Z

    move-result v1

    # setter for: Lcom/android/datetimepicker/HapticFeedbackController;->mIsGloballyEnabled:Z
    invoke-static {v0, v1}, Lcom/android/datetimepicker/HapticFeedbackController;->access$002(Lcom/android/datetimepicker/HapticFeedbackController;Z)Z

    .line 36
    return-void
.end method
