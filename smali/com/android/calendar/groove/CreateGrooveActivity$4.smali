.class Lcom/android/calendar/groove/CreateGrooveActivity$4;
.super Ljava/lang/Object;
.source "CreateGrooveActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/groove/CreateGrooveActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/groove/CreateGrooveActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/groove/CreateGrooveActivity;)V
    .locals 0

    .prologue
    .line 482
    iput-object p1, p0, Lcom/android/calendar/groove/CreateGrooveActivity$4;->this$0:Lcom/android/calendar/groove/CreateGrooveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity$4;->this$0:Lcom/android/calendar/groove/CreateGrooveActivity;

    # getter for: Lcom/android/calendar/groove/CreateGrooveActivity;->mInstanceCreated:Z
    invoke-static {v0}, Lcom/android/calendar/groove/CreateGrooveActivity;->access$800(Lcom/android/calendar/groove/CreateGrooveActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity$4;->this$0:Lcom/android/calendar/groove/CreateGrooveActivity;

    invoke-virtual {v0}, Lcom/android/calendar/groove/CreateGrooveActivity;->finish()V

    .line 490
    :goto_0
    return-void

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/groove/CreateGrooveActivity$4;->this$0:Lcom/android/calendar/groove/CreateGrooveActivity;

    iget-object v1, p0, Lcom/android/calendar/groove/CreateGrooveActivity$4;->this$0:Lcom/android/calendar/groove/CreateGrooveActivity;

    invoke-virtual {v1}, Lcom/android/calendar/groove/CreateGrooveActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$string;->async_scheduling_timeout:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/calendar/groove/CreateGrooveActivity;->finishWithMessage(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/calendar/groove/CreateGrooveActivity;->access$500(Lcom/android/calendar/groove/CreateGrooveActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
