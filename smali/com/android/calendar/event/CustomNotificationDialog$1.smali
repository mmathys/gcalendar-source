.class Lcom/android/calendar/event/CustomNotificationDialog$1;
.super Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;
.source "CustomNotificationDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/CustomNotificationDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/CustomNotificationDialog;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/CustomNotificationDialog;)V
    .locals 1

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/calendar/event/CustomNotificationDialog$1;->this$0:Lcom/android/calendar/event/CustomNotificationDialog;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/calendar/event/CustomNotificationDialog$OptionSet;-><init>(Lcom/android/calendar/event/CustomNotificationDialog;Lcom/android/calendar/event/CustomNotificationDialog$1;)V

    return-void
.end method


# virtual methods
.method protected getViewText(IIZ)Ljava/lang/String;
    .locals 3

    .prologue
    .line 109
    if-eqz p3, :cond_3

    .line 110
    sget v0, Lcom/android/calendar/R$id;->minutes:I

    if-ne p1, v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog$1;->this$0:Lcom/android/calendar/event/CustomNotificationDialog;

    # getter for: Lcom/android/calendar/event/CustomNotificationDialog;->mResources:Landroid/content/res/Resources;
    invoke-static {v0}, Lcom/android/calendar/event/CustomNotificationDialog;->access$200(Lcom/android/calendar/event/CustomNotificationDialog;)Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$plurals;->minutes_before:I

    iget-object v2, p0, Lcom/android/calendar/event/CustomNotificationDialog$1;->this$0:Lcom/android/calendar/event/CustomNotificationDialog;

    # getter for: Lcom/android/calendar/event/CustomNotificationDialog;->mCount:I
    invoke-static {v2}, Lcom/android/calendar/event/CustomNotificationDialog;->access$100(Lcom/android/calendar/event/CustomNotificationDialog;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 131
    :goto_0
    return-object v0

    .line 112
    :cond_0
    sget v0, Lcom/android/calendar/R$id;->hours:I

    if-ne p1, v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog$1;->this$0:Lcom/android/calendar/event/CustomNotificationDialog;

    # getter for: Lcom/android/calendar/event/CustomNotificationDialog;->mResources:Landroid/content/res/Resources;
    invoke-static {v0}, Lcom/android/calendar/event/CustomNotificationDialog;->access$200(Lcom/android/calendar/event/CustomNotificationDialog;)Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$plurals;->hours_before:I

    iget-object v2, p0, Lcom/android/calendar/event/CustomNotificationDialog$1;->this$0:Lcom/android/calendar/event/CustomNotificationDialog;

    # getter for: Lcom/android/calendar/event/CustomNotificationDialog;->mCount:I
    invoke-static {v2}, Lcom/android/calendar/event/CustomNotificationDialog;->access$100(Lcom/android/calendar/event/CustomNotificationDialog;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 114
    :cond_1
    sget v0, Lcom/android/calendar/R$id;->days:I

    if-ne p1, v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog$1;->this$0:Lcom/android/calendar/event/CustomNotificationDialog;

    # getter for: Lcom/android/calendar/event/CustomNotificationDialog;->mResources:Landroid/content/res/Resources;
    invoke-static {v0}, Lcom/android/calendar/event/CustomNotificationDialog;->access$200(Lcom/android/calendar/event/CustomNotificationDialog;)Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$plurals;->days_before:I

    iget-object v2, p0, Lcom/android/calendar/event/CustomNotificationDialog$1;->this$0:Lcom/android/calendar/event/CustomNotificationDialog;

    # getter for: Lcom/android/calendar/event/CustomNotificationDialog;->mCount:I
    invoke-static {v2}, Lcom/android/calendar/event/CustomNotificationDialog;->access$100(Lcom/android/calendar/event/CustomNotificationDialog;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 116
    :cond_2
    sget v0, Lcom/android/calendar/R$id;->weeks:I

    if-ne p1, v0, :cond_7

    .line 117
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog$1;->this$0:Lcom/android/calendar/event/CustomNotificationDialog;

    # getter for: Lcom/android/calendar/event/CustomNotificationDialog;->mResources:Landroid/content/res/Resources;
    invoke-static {v0}, Lcom/android/calendar/event/CustomNotificationDialog;->access$200(Lcom/android/calendar/event/CustomNotificationDialog;)Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$plurals;->weeks_before:I

    iget-object v2, p0, Lcom/android/calendar/event/CustomNotificationDialog$1;->this$0:Lcom/android/calendar/event/CustomNotificationDialog;

    # getter for: Lcom/android/calendar/event/CustomNotificationDialog;->mCount:I
    invoke-static {v2}, Lcom/android/calendar/event/CustomNotificationDialog;->access$100(Lcom/android/calendar/event/CustomNotificationDialog;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 120
    :cond_3
    sget v0, Lcom/android/calendar/R$id;->minutes:I

    if-ne p1, v0, :cond_4

    .line 121
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog$1;->this$0:Lcom/android/calendar/event/CustomNotificationDialog;

    # getter for: Lcom/android/calendar/event/CustomNotificationDialog;->mResources:Landroid/content/res/Resources;
    invoke-static {v0}, Lcom/android/calendar/event/CustomNotificationDialog;->access$200(Lcom/android/calendar/event/CustomNotificationDialog;)Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$plurals;->minutes:I

    iget-object v2, p0, Lcom/android/calendar/event/CustomNotificationDialog$1;->this$0:Lcom/android/calendar/event/CustomNotificationDialog;

    # getter for: Lcom/android/calendar/event/CustomNotificationDialog;->mCount:I
    invoke-static {v2}, Lcom/android/calendar/event/CustomNotificationDialog;->access$100(Lcom/android/calendar/event/CustomNotificationDialog;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 122
    :cond_4
    sget v0, Lcom/android/calendar/R$id;->hours:I

    if-ne p1, v0, :cond_5

    .line 123
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog$1;->this$0:Lcom/android/calendar/event/CustomNotificationDialog;

    # getter for: Lcom/android/calendar/event/CustomNotificationDialog;->mResources:Landroid/content/res/Resources;
    invoke-static {v0}, Lcom/android/calendar/event/CustomNotificationDialog;->access$200(Lcom/android/calendar/event/CustomNotificationDialog;)Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$plurals;->hours:I

    iget-object v2, p0, Lcom/android/calendar/event/CustomNotificationDialog$1;->this$0:Lcom/android/calendar/event/CustomNotificationDialog;

    # getter for: Lcom/android/calendar/event/CustomNotificationDialog;->mCount:I
    invoke-static {v2}, Lcom/android/calendar/event/CustomNotificationDialog;->access$100(Lcom/android/calendar/event/CustomNotificationDialog;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 124
    :cond_5
    sget v0, Lcom/android/calendar/R$id;->days:I

    if-ne p1, v0, :cond_6

    .line 125
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog$1;->this$0:Lcom/android/calendar/event/CustomNotificationDialog;

    # getter for: Lcom/android/calendar/event/CustomNotificationDialog;->mResources:Landroid/content/res/Resources;
    invoke-static {v0}, Lcom/android/calendar/event/CustomNotificationDialog;->access$200(Lcom/android/calendar/event/CustomNotificationDialog;)Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$plurals;->days:I

    iget-object v2, p0, Lcom/android/calendar/event/CustomNotificationDialog$1;->this$0:Lcom/android/calendar/event/CustomNotificationDialog;

    # getter for: Lcom/android/calendar/event/CustomNotificationDialog;->mCount:I
    invoke-static {v2}, Lcom/android/calendar/event/CustomNotificationDialog;->access$100(Lcom/android/calendar/event/CustomNotificationDialog;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 126
    :cond_6
    sget v0, Lcom/android/calendar/R$id;->weeks:I

    if-ne p1, v0, :cond_7

    .line 127
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog$1;->this$0:Lcom/android/calendar/event/CustomNotificationDialog;

    # getter for: Lcom/android/calendar/event/CustomNotificationDialog;->mResources:Landroid/content/res/Resources;
    invoke-static {v0}, Lcom/android/calendar/event/CustomNotificationDialog;->access$200(Lcom/android/calendar/event/CustomNotificationDialog;)Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$plurals;->weeks:I

    iget-object v2, p0, Lcom/android/calendar/event/CustomNotificationDialog$1;->this$0:Lcom/android/calendar/event/CustomNotificationDialog;

    # getter for: Lcom/android/calendar/event/CustomNotificationDialog;->mCount:I
    invoke-static {v2}, Lcom/android/calendar/event/CustomNotificationDialog;->access$100(Lcom/android/calendar/event/CustomNotificationDialog;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 131
    :cond_7
    const-string v0, ""

    goto/16 :goto_0
.end method

.method protected onItemSelected()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/calendar/event/CustomNotificationDialog$1;->this$0:Lcom/android/calendar/event/CustomNotificationDialog;

    iget-object v1, p0, Lcom/android/calendar/event/CustomNotificationDialog$1;->this$0:Lcom/android/calendar/event/CustomNotificationDialog;

    # getter for: Lcom/android/calendar/event/CustomNotificationDialog;->mEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/calendar/event/CustomNotificationDialog;->access$300(Lcom/android/calendar/event/CustomNotificationDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/calendar/event/CustomNotificationDialog;->validateIntervalText(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/calendar/event/CustomNotificationDialog;->access$400(Lcom/android/calendar/event/CustomNotificationDialog;Ljava/lang/String;)V

    .line 137
    return-void
.end method
