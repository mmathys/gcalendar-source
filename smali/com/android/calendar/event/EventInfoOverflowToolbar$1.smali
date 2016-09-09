.class Lcom/android/calendar/event/EventInfoOverflowToolbar$1;
.super Ljava/lang/Object;
.source "EventInfoOverflowToolbar.java"

# interfaces
.implements Landroid/widget/Toolbar$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/EventInfoOverflowToolbar;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/EventInfoOverflowToolbar;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/EventInfoOverflowToolbar;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/calendar/event/EventInfoOverflowToolbar$1;->this$0:Lcom/android/calendar/event/EventInfoOverflowToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 48
    iget-object v1, p0, Lcom/android/calendar/event/EventInfoOverflowToolbar$1;->this$0:Lcom/android/calendar/event/EventInfoOverflowToolbar;

    # getter for: Lcom/android/calendar/event/EventInfoOverflowToolbar;->mListener:Lcom/android/calendar/event/EventInfoOverflowContainer$OnMenuItemClickListener;
    invoke-static {v1}, Lcom/android/calendar/event/EventInfoOverflowToolbar;->access$000(Lcom/android/calendar/event/EventInfoOverflowToolbar;)Lcom/android/calendar/event/EventInfoOverflowContainer$OnMenuItemClickListener;

    move-result-object v1

    if-nez v1, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v0

    .line 52
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 53
    sget v2, Lcom/android/calendar/R$id;->action_delete:I

    if-ne v1, v2, :cond_2

    .line 54
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoOverflowToolbar$1;->this$0:Lcom/android/calendar/event/EventInfoOverflowToolbar;

    # getter for: Lcom/android/calendar/event/EventInfoOverflowToolbar;->mListener:Lcom/android/calendar/event/EventInfoOverflowContainer$OnMenuItemClickListener;
    invoke-static {v0}, Lcom/android/calendar/event/EventInfoOverflowToolbar;->access$000(Lcom/android/calendar/event/EventInfoOverflowToolbar;)Lcom/android/calendar/event/EventInfoOverflowContainer$OnMenuItemClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/calendar/event/EventInfoOverflowContainer$OnMenuItemClickListener;->onDeleteItemClicked()V

    .line 66
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 55
    :cond_2
    sget v2, Lcom/android/calendar/R$id;->action_email_guests:I

    if-ne v1, v2, :cond_3

    .line 56
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoOverflowToolbar$1;->this$0:Lcom/android/calendar/event/EventInfoOverflowToolbar;

    # getter for: Lcom/android/calendar/event/EventInfoOverflowToolbar;->mListener:Lcom/android/calendar/event/EventInfoOverflowContainer$OnMenuItemClickListener;
    invoke-static {v0}, Lcom/android/calendar/event/EventInfoOverflowToolbar;->access$000(Lcom/android/calendar/event/EventInfoOverflowToolbar;)Lcom/android/calendar/event/EventInfoOverflowContainer$OnMenuItemClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/calendar/event/EventInfoOverflowContainer$OnMenuItemClickListener;->onEmailGuestsItemClicked()V

    goto :goto_1

    .line 57
    :cond_3
    sget v2, Lcom/android/calendar/R$id;->action_forward:I

    if-ne v1, v2, :cond_4

    .line 58
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoOverflowToolbar$1;->this$0:Lcom/android/calendar/event/EventInfoOverflowToolbar;

    # getter for: Lcom/android/calendar/event/EventInfoOverflowToolbar;->mListener:Lcom/android/calendar/event/EventInfoOverflowContainer$OnMenuItemClickListener;
    invoke-static {v0}, Lcom/android/calendar/event/EventInfoOverflowToolbar;->access$000(Lcom/android/calendar/event/EventInfoOverflowToolbar;)Lcom/android/calendar/event/EventInfoOverflowContainer$OnMenuItemClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/calendar/event/EventInfoOverflowContainer$OnMenuItemClickListener;->onForwardItemClicked()V

    goto :goto_1

    .line 59
    :cond_4
    sget v2, Lcom/android/calendar/R$id;->action_load_groove:I

    if-ne v1, v2, :cond_5

    .line 60
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoOverflowToolbar$1;->this$0:Lcom/android/calendar/event/EventInfoOverflowToolbar;

    # getter for: Lcom/android/calendar/event/EventInfoOverflowToolbar;->mListener:Lcom/android/calendar/event/EventInfoOverflowContainer$OnMenuItemClickListener;
    invoke-static {v0}, Lcom/android/calendar/event/EventInfoOverflowToolbar;->access$000(Lcom/android/calendar/event/EventInfoOverflowToolbar;)Lcom/android/calendar/event/EventInfoOverflowContainer$OnMenuItemClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/calendar/event/EventInfoOverflowContainer$OnMenuItemClickListener;->onLoadGrooveClicked()V

    goto :goto_1

    .line 61
    :cond_5
    sget v2, Lcom/android/calendar/R$id;->action_load_event:I

    if-ne v1, v2, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoOverflowToolbar$1;->this$0:Lcom/android/calendar/event/EventInfoOverflowToolbar;

    # getter for: Lcom/android/calendar/event/EventInfoOverflowToolbar;->mListener:Lcom/android/calendar/event/EventInfoOverflowContainer$OnMenuItemClickListener;
    invoke-static {v0}, Lcom/android/calendar/event/EventInfoOverflowToolbar;->access$000(Lcom/android/calendar/event/EventInfoOverflowToolbar;)Lcom/android/calendar/event/EventInfoOverflowContainer$OnMenuItemClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/calendar/event/EventInfoOverflowContainer$OnMenuItemClickListener;->onLoadEventClicked()V

    goto :goto_1
.end method
