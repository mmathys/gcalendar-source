.class public Lcom/android/calendar/event/EventInfoOverflowButton;
.super Landroid/widget/ImageButton;
.source "EventInfoOverflowButton.java"

# interfaces
.implements Lcom/android/calendar/event/EventInfoOverflowContainer;


# instance fields
.field private mListener:Lcom/android/calendar/event/EventInfoOverflowContainer$OnMenuItemClickListener;

.field private final mOverflowMenu:Landroid/widget/PopupMenu;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-static {}, Lcom/android/calendar/Utils;->isKitKatOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoOverflowButton;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x800005

    invoke-direct {v0, v1, p0, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    .line 26
    :goto_0
    iput-object v0, p0, Lcom/android/calendar/event/EventInfoOverflowButton;->mOverflowMenu:Landroid/widget/PopupMenu;

    .line 30
    invoke-direct {p0}, Lcom/android/calendar/event/EventInfoOverflowButton;->init()V

    .line 31
    return-void

    .line 26
    :cond_0
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoOverflowButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-static {}, Lcom/android/calendar/Utils;->isKitKatOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoOverflowButton;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x800005

    invoke-direct {v0, v1, p0, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    .line 26
    :goto_0
    iput-object v0, p0, Lcom/android/calendar/event/EventInfoOverflowButton;->mOverflowMenu:Landroid/widget/PopupMenu;

    .line 35
    invoke-direct {p0}, Lcom/android/calendar/event/EventInfoOverflowButton;->init()V

    .line 36
    return-void

    .line 26
    :cond_0
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoOverflowButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    invoke-static {}, Lcom/android/calendar/Utils;->isKitKatOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoOverflowButton;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x800005

    invoke-direct {v0, v1, p0, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    .line 26
    :goto_0
    iput-object v0, p0, Lcom/android/calendar/event/EventInfoOverflowButton;->mOverflowMenu:Landroid/widget/PopupMenu;

    .line 40
    invoke-direct {p0}, Lcom/android/calendar/event/EventInfoOverflowButton;->init()V

    .line 41
    return-void

    .line 26
    :cond_0
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoOverflowButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 24
    invoke-static {}, Lcom/android/calendar/Utils;->isKitKatOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoOverflowButton;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x800005

    invoke-direct {v0, v1, p0, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    .line 26
    :goto_0
    iput-object v0, p0, Lcom/android/calendar/event/EventInfoOverflowButton;->mOverflowMenu:Landroid/widget/PopupMenu;

    .line 47
    invoke-direct {p0}, Lcom/android/calendar/event/EventInfoOverflowButton;->init()V

    .line 48
    return-void

    .line 26
    :cond_0
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoOverflowButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/calendar/event/EventInfoOverflowButton;)Landroid/widget/PopupMenu;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoOverflowButton;->mOverflowMenu:Landroid/widget/PopupMenu;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/event/EventInfoOverflowButton;)Lcom/android/calendar/event/EventInfoOverflowContainer$OnMenuItemClickListener;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoOverflowButton;->mListener:Lcom/android/calendar/event/EventInfoOverflowContainer$OnMenuItemClickListener;

    return-object v0
.end method

.method private init()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/calendar/event/EventInfoOverflowButton;->initOverflowButton()V

    .line 52
    invoke-direct {p0}, Lcom/android/calendar/event/EventInfoOverflowButton;->initOverflowMenu()V

    .line 53
    return-void
.end method

.method private initOverflowButton()V
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lcom/android/calendar/Utils;->isKitKatOrLater()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoOverflowButton;->mOverflowMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getDragToOpenListener()Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/EventInfoOverflowButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 61
    :cond_0
    new-instance v0, Lcom/android/calendar/event/EventInfoOverflowButton$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/event/EventInfoOverflowButton$1;-><init>(Lcom/android/calendar/event/EventInfoOverflowButton;)V

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/EventInfoOverflowButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    return-void
.end method

.method private initOverflowMenu()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoOverflowButton;->mOverflowMenu:Landroid/widget/PopupMenu;

    sget v1, Lcom/android/calendar/R$menu;->event_info_bar:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 72
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoOverflowButton;->mOverflowMenu:Landroid/widget/PopupMenu;

    new-instance v1, Lcom/android/calendar/event/EventInfoOverflowButton$2;

    invoke-direct {v1, p0}, Lcom/android/calendar/event/EventInfoOverflowButton$2;-><init>(Lcom/android/calendar/event/EventInfoOverflowButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 94
    return-void
.end method


# virtual methods
.method public onRefreshModel(Lcom/android/calendar/event/CalendarEventModel;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 98
    iget-object v0, p0, Lcom/android/calendar/event/EventInfoOverflowButton;->mOverflowMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    .line 101
    sget v0, Lcom/android/calendar/R$id;->action_email_guests:I

    invoke-interface {v2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_1

    .line 103
    sget-object v3, Lcom/android/calendar/event/EventInfoOverflowButton;->CONFIG:Lcom/android/calendar/event/EventInfoOverflowContainer$Config;

    invoke-interface {v3, p1}, Lcom/android/calendar/event/EventInfoOverflowContainer$Config;->shouldShowEmailGuestsItem(Lcom/android/calendar/event/CalendarEventModel;)Z

    move-result v3

    .line 104
    if-eqz v3, :cond_0

    .line 105
    sget-object v4, Lcom/android/calendar/event/EventInfoOverflowButton;->CONFIG:Lcom/android/calendar/event/EventInfoOverflowContainer$Config;

    invoke-interface {v4, p1}, Lcom/android/calendar/event/EventInfoOverflowContainer$Config;->getEmailLabelIdFromModel(Lcom/android/calendar/event/CalendarEventModel;)I

    move-result v4

    .line 106
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 108
    :cond_0
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 109
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 112
    :cond_1
    sget v0, Lcom/android/calendar/R$id;->action_delete:I

    invoke-interface {v2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_2

    .line 114
    sget-object v3, Lcom/android/calendar/event/EventInfoOverflowButton;->CONFIG:Lcom/android/calendar/event/EventInfoOverflowContainer$Config;

    invoke-interface {v3, p1}, Lcom/android/calendar/event/EventInfoOverflowContainer$Config;->shouldShowDeleteItem(Lcom/android/calendar/event/CalendarEventModel;)Z

    move-result v3

    .line 115
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 116
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 119
    :cond_2
    sget v0, Lcom/android/calendar/R$id;->action_forward:I

    invoke-interface {v2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_3

    .line 121
    sget-object v3, Lcom/android/calendar/event/EventInfoOverflowButton;->CONFIG:Lcom/android/calendar/event/EventInfoOverflowContainer$Config;

    invoke-interface {v3, p1}, Lcom/android/calendar/event/EventInfoOverflowContainer$Config;->shouldShowForwardItem(Lcom/android/calendar/event/CalendarEventModel;)Z

    move-result v3

    .line 122
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 123
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 126
    :cond_3
    sget v0, Lcom/android/calendar/R$id;->action_load_groove:I

    invoke-interface {v2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_4

    .line 128
    sget-object v3, Lcom/android/calendar/event/EventInfoOverflowButton;->CONFIG:Lcom/android/calendar/event/EventInfoOverflowContainer$Config;

    .line 129
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoOverflowButton;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Lcom/android/calendar/event/EventInfoOverflowContainer$Config;->shouldShowLoadGrooveItem(Lcom/android/calendar/event/CalendarEventModel;Landroid/content/Context;)Z

    move-result v3

    .line 130
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 131
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 134
    :cond_4
    sget v3, Lcom/android/calendar/R$id;->action_load_event:I

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 135
    if-eqz v0, :cond_5

    .line 136
    sget-object v0, Lcom/android/calendar/event/EventInfoOverflowButton;->CONFIG:Lcom/android/calendar/event/EventInfoOverflowContainer$Config;

    .line 137
    invoke-virtual {p0}, Lcom/android/calendar/event/EventInfoOverflowButton;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v0, p1, v4}, Lcom/android/calendar/event/EventInfoOverflowContainer$Config;->shouldShowLoadEventItem(Lcom/android/calendar/event/CalendarEventModel;Landroid/content/Context;)Z

    move-result v0

    .line 138
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 139
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 144
    :cond_5
    invoke-interface {v2}, Landroid/view/Menu;->size()I

    move-result v3

    move v0, v1

    .line 145
    :goto_0
    if-ge v0, v3, :cond_9

    .line 146
    invoke-interface {v2, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 147
    invoke-interface {v4}, Landroid/view/MenuItem;->isVisible()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-interface {v4}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 148
    :cond_6
    const/4 v0, 0x1

    .line 152
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/calendar/event/EventInfoOverflowButton;->setEnabled(Z)V

    .line 153
    if-eqz v0, :cond_8

    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/calendar/event/EventInfoOverflowButton;->setVisibility(I)V

    .line 154
    return-void

    .line 145
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    :cond_8
    const/16 v1, 0x8

    goto :goto_2

    :cond_9
    move v0, v1

    goto :goto_1
.end method

.method public setOnMenuItemClickedListener(Lcom/android/calendar/event/EventInfoOverflowContainer$OnMenuItemClickListener;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/calendar/event/EventInfoOverflowButton;->mListener:Lcom/android/calendar/event/EventInfoOverflowContainer$OnMenuItemClickListener;

    .line 159
    return-void
.end method
