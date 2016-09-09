.class final Lcom/android/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;
.super Landroid/os/Handler;
.source "BaseRecipientAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/chips/BaseRecipientAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DelayedMessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/chips/BaseRecipientAdapter;


# direct methods
.method private constructor <init>(Lcom/android/ex/chips/BaseRecipientAdapter;)V
    .locals 0

    .prologue
    .line 554
    iput-object p1, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ex/chips/BaseRecipientAdapter;Lcom/android/ex/chips/BaseRecipientAdapter$1;)V
    .locals 0

    .prologue
    .line 554
    invoke-direct {p0, p1}, Lcom/android/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;-><init>(Lcom/android/ex/chips/BaseRecipientAdapter;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    # getter for: Lcom/android/ex/chips/BaseRecipientAdapter;->mRemainingDirectoryCount:I
    invoke-static {v0}, Lcom/android/ex/chips/BaseRecipientAdapter;->access$1000(Lcom/android/ex/chips/BaseRecipientAdapter;)I

    move-result v0

    if-lez v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    iget-object v1, p0, Lcom/android/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;->this$0:Lcom/android/ex/chips/BaseRecipientAdapter;

    invoke-virtual {v1}, Lcom/android/ex/chips/BaseRecipientAdapter;->constructEntryList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/chips/BaseRecipientAdapter;->updateEntries(Ljava/util/List;)V

    .line 560
    :cond_0
    return-void
.end method

.method public removeDelayedLoadMessage()V
    .locals 1

    .prologue
    .line 568
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;->removeMessages(I)V

    .line 569
    return-void
.end method

.method public sendDelayedLoadMessage()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 563
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v2, v1}, Lcom/android/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/ex/chips/BaseRecipientAdapter$DelayedMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 565
    return-void
.end method
