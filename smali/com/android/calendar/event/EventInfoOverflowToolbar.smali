.class public Lcom/android/calendar/event/EventInfoOverflowToolbar;
.super Landroid/widget/Toolbar;
.source "EventInfoOverflowToolbar.java"

# interfaces
.implements Lcom/android/calendar/event/EventInfoOverflowContainer;


# instance fields
.field private mListener:Lcom/android/calendar/event/EventInfoOverflowContainer$OnMenuItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/Toolbar;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-direct {p0}, Lcom/android/calendar/event/EventInfoOverflowToolbar;->init()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-direct {p0}, Lcom/android/calendar/event/EventInfoOverflowToolbar;->init()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-direct {p0}, Lcom/android/calendar/event/EventInfoOverflowToolbar;->init()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 40
    invoke-direct {p0}, Lcom/android/calendar/event/EventInfoOverflowToolbar;->init()V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/event/EventInfoOverflowToolbar;)Lcom/android/calendar/event/EventInfoOverflowContainer$OnMenuItemClickListener;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoOverflowToolbar;->mListener:Lcom/android/calendar/event/EventInfoOverflowContainer$OnMenuItemClickListener;

    return-object v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 44
    sget v0, Lcom/android/calendar/R$menu;->event_info_bar:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/EventInfoOverflowToolbar;->inflateMenu(I)V

    .line 45
    new-instance v0, Lcom/android/calendar/event/EventInfoOverflowToolbar$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/event/EventInfoOverflowToolbar$1;-><init>(Lcom/android/calendar/event/EventInfoOverflowToolbar;)V

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/EventInfoOverflowToolbar;->setOnMenuItemClickListener(Landroid/widget/Toolbar$OnMenuItemClickListener;)V

    .line 69
    return-void
.end method


# virtual methods
.method public onRefreshModel(Lcom/android/calendar/event/CalendarEventModel;)V
    .locals 7

    .prologue
    .line 73
    sget-object v0, Lcom/android/calendar/event/EventInfoOverflowToolbar;->CONFIG:Lcom/android/calendar/event/EventInfoOverflowContainer$Config;

    invoke-interface {v0, p1}, Lcom/android/calendar/event/EventInfoOverflowContainer$Config;->shouldShowDeleteItem(Lcom/android/calendar/event/CalendarEventModel;)Z

    move-result v0

    .line 74
    sget-object v1, Lcom/android/calendar/event/EventInfoOverflowToolbar;->CONFIG:Lcom/android/calendar/event/EventInfoOverflowContainer$Config;

    invoke-interface {v1, p1}, Lcom/android/calendar/event/EventInfoOverflowContainer$Config;->shouldShowForwardItem(Lcom/android/calendar/event/CalendarEventModel;)Z

    move-result v1

    .line 75
    sget-object v2, Lcom/android/calendar/event/EventInfoOverflowToolbar;->CONFIG:Lcom/android/calendar/event/EventInfoOverflowContainer$Config;

    invoke-interface {v2, p1}, Lcom/android/calendar/event/EventInfoOverflowContainer$Config;->shouldShowEmailGuestsItem(Lcom/android/calendar/event/CalendarEventModel;)Z

    move-result v2

    .line 76
    sget-object v3, Lcom/android/calendar/event/EventInfoOverflowToolbar;->CONFIG:Lcom/android/calendar/event/EventInfoOverflowContainer$Config;

    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoOverflowToolbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Lcom/android/calendar/event/EventInfoOverflowContainer$Config;->shouldShowLoadGrooveItem(Lcom/android/calendar/event/CalendarEventModel;Landroid/content/Context;)Z

    move-result v3

    .line 77
    sget-object v4, Lcom/android/calendar/event/EventInfoOverflowToolbar;->CONFIG:Lcom/android/calendar/event/EventInfoOverflowContainer$Config;

    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoOverflowToolbar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-interface {v4, p1, v5}, Lcom/android/calendar/event/EventInfoOverflowContainer$Config;->shouldShowLoadEventItem(Lcom/android/calendar/event/CalendarEventModel;Landroid/content/Context;)Z

    move-result v4

    .line 78
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoOverflowToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v5

    .line 79
    sget v6, Lcom/android/calendar/R$id;->action_delete:I

    invoke-interface {v5, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 80
    sget v0, Lcom/android/calendar/R$id;->action_forward:I

    invoke-interface {v5, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 81
    sget v0, Lcom/android/calendar/R$id;->action_email_guests:I

    invoke-interface {v5, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    .line 82
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 83
    sget v0, Lcom/android/calendar/R$id;->action_load_groove:I

    invoke-interface {v5, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 84
    sget v0, Lcom/android/calendar/R$id;->action_load_event:I

    invoke-interface {v5, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 85
    if-eqz v2, :cond_0

    .line 86
    sget-object v0, Lcom/android/calendar/event/EventInfoOverflowToolbar;->CONFIG:Lcom/android/calendar/event/EventInfoOverflowContainer$Config;

    invoke-interface {v0, p1}, Lcom/android/calendar/event/EventInfoOverflowContainer$Config;->getEmailLabelIdFromModel(Lcom/android/calendar/event/CalendarEventModel;)I

    move-result v0

    .line 87
    sget v1, Lcom/android/calendar/R$id;->action_email_guests:I

    invoke-interface {v5, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 89
    :cond_0
    return-void
.end method

.method public setOnMenuItemClickedListener(Lcom/android/calendar/event/EventInfoOverflowContainer$OnMenuItemClickListener;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/calendar/event/EventInfoOverflowToolbar;->mListener:Lcom/android/calendar/event/EventInfoOverflowContainer$OnMenuItemClickListener;

    .line 95
    return-void
.end method
