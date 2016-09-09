.class Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper$6$1;
.super Ljava/lang/Object;
.source "ViewScreenOpenCloseHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper$6;


# direct methods
.method constructor <init>(Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper$6;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper$6$1;->this$1:Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper$6$1;->this$1:Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper$6;

    iget-object v0, v0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper$6;->val$onAnimationEnd:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper$6$1;->this$1:Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper$6;

    iget-object v0, v0, Lcom/android/calendar/newapi/screen/ViewScreenOpenCloseHelper$6;->val$onAnimationEnd:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 218
    :cond_0
    return-void
.end method
