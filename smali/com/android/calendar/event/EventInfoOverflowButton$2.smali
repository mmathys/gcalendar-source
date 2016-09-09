.class Lcom/android/calendar/event/EventInfoOverflowButton$2;
.super Ljava/lang/Object;
.source "EventInfoOverflowButton.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/EventInfoOverflowButton;->initOverflowMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/EventInfoOverflowButton;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/EventInfoOverflowButton;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/calendar/event/EventInfoOverflowButton$2;->this$0:Lcom/android/calendar/event/EventInfoOverflowButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 75
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoOverflowButton$2;->this$0:Lcom/android/calendar/event/EventInfoOverflowButton;

    # getter for: Lcom/android/calendar/event/EventInfoOverflowButton;->mListener:Lcom/android/calendar/event/EventInfoOverflowContainer$OnMenuItemClickListener;
    invoke-static {v0}, Lcom/android/calendar/event/EventInfoOverflowButton;->access$100(Lcom/android/calendar/event/EventInfoOverflowButton;)Lcom/android/calendar/event/EventInfoOverflowContainer$OnMenuItemClickListener;

    move-result-object v0

    if-nez v0, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v2

    .line 79
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 80
    sget v1, Lcom/android/calendar/R$id;->action_delete:I

    if-ne v0, v1, :cond_2

    .line 81
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoOverflowButton$2;->this$0:Lcom/android/calendar/event/EventInfoOverflowButton;

    # getter for: Lcom/android/calendar/event/EventInfoOverflowButton;->mListener:Lcom/android/calendar/event/EventInfoOverflowContainer$OnMenuItemClickListener;
    invoke-static {v0}, Lcom/android/calendar/event/EventInfoOverflowButton;->access$100(Lcom/android/calendar/event/EventInfoOverflowButton;)Lcom/android/calendar/event/EventInfoOverflowContainer$OnMenuItemClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/calendar/event/EventInfoOverflowContainer$OnMenuItemClickListener;->onDeleteItemClicked()V

    goto :goto_0

    .line 82
    :cond_2
    sget v1, Lcom/android/calendar/R$id;->action_email_guests:I

    if-ne v0, v1, :cond_3

    .line 83
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoOverflowButton$2;->this$0:Lcom/android/calendar/event/EventInfoOverflowButton;

    # getter for: Lcom/android/calendar/event/EventInfoOverflowButton;->mListener:Lcom/android/calendar/event/EventInfoOverflowContainer$OnMenuItemClickListener;
    invoke-static {v0}, Lcom/android/calendar/event/EventInfoOverflowButton;->access$100(Lcom/android/calendar/event/EventInfoOverflowButton;)Lcom/android/calendar/event/EventInfoOverflowContainer$OnMenuItemClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/calendar/event/EventInfoOverflowContainer$OnMenuItemClickListener;->onEmailGuestsItemClicked()V

    goto :goto_0

    .line 84
    :cond_3
    sget v1, Lcom/android/calendar/R$id;->action_forward:I

    if-ne v0, v1, :cond_4

    .line 85
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoOverflowButton$2;->this$0:Lcom/android/calendar/event/EventInfoOverflowButton;

    # getter for: Lcom/android/calendar/event/EventInfoOverflowButton;->mListener:Lcom/android/calendar/event/EventInfoOverflowContainer$OnMenuItemClickListener;
    invoke-static {v0}, Lcom/android/calendar/event/EventInfoOverflowButton;->access$100(Lcom/android/calendar/event/EventInfoOverflowButton;)Lcom/android/calendar/event/EventInfoOverflowContainer$OnMenuItemClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/calendar/event/EventInfoOverflowContainer$OnMenuItemClickListener;->onForwardItemClicked()V

    goto :goto_0

    .line 86
    :cond_4
    sget v1, Lcom/android/calendar/R$id;->action_load_groove:I

    if-ne v0, v1, :cond_5

    .line 87
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoOverflowButton$2;->this$0:Lcom/android/calendar/event/EventInfoOverflowButton;

    # getter for: Lcom/android/calendar/event/EventInfoOverflowButton;->mListener:Lcom/android/calendar/event/EventInfoOverflowContainer$OnMenuItemClickListener;
    invoke-static {v0}, Lcom/android/calendar/event/EventInfoOverflowButton;->access$100(Lcom/android/calendar/event/EventInfoOverflowButton;)Lcom/android/calendar/event/EventInfoOverflowContainer$OnMenuItemClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/calendar/event/EventInfoOverflowContainer$OnMenuItemClickListener;->onLoadGrooveClicked()V

    goto :goto_0

    .line 88
    :cond_5
    sget v1, Lcom/android/calendar/R$id;->action_load_event:I

    if-ne v0, v1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoOverflowButton$2;->this$0:Lcom/android/calendar/event/EventInfoOverflowButton;

    # getter for: Lcom/android/calendar/event/EventInfoOverflowButton;->mListener:Lcom/android/calendar/event/EventInfoOverflowContainer$OnMenuItemClickListener;
    invoke-static {v0}, Lcom/android/calendar/event/EventInfoOverflowButton;->access$100(Lcom/android/calendar/event/EventInfoOverflowButton;)Lcom/android/calendar/event/EventInfoOverflowContainer$OnMenuItemClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/calendar/event/EventInfoOverflowContainer$OnMenuItemClickListener;->onLoadEventClicked()V

    goto :goto_0
.end method
