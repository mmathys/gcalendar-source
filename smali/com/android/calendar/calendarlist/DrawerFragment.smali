.class public Lcom/android/calendar/calendarlist/DrawerFragment;
.super Landroid/app/Fragment;
.source "DrawerFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/support/v4/view/OnApplyWindowInsetsListener;
.implements Lcom/android/calendar/CalendarController$Command$Handler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/calendarlist/DrawerFragment$OnDrawerClosedListener;,
        Lcom/android/calendar/calendarlist/DrawerFragment$OnDrawerItemClickedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Fragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/support/v4/view/OnApplyWindowInsetsListener;",
        "Lcom/android/calendar/CalendarController$Command$Handler;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/calendar/calendarlist/DrawerListAdapter;

.field private final mBirthdaysSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/calendar/CalendarController;

.field private final mDrawerClosedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/calendarlist/DrawerFragment$OnDrawerClosedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawerItemClickedListener:Lcom/android/calendar/calendarlist/DrawerFragment$OnDrawerItemClickedListener;

.field private final mExtraItemsObserver:Landroid/database/ContentObserver;

.field private mList:Landroid/widget/ListView;

.field private final mLoadsFinished:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/calendarlist/DrawerFragment;->mLoadsFinished:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/calendarlist/DrawerFragment;->mBirthdaysSettings:Ljava/util/Map;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/calendarlist/DrawerFragment;->mDrawerClosedListeners:Ljava/util/List;

    .line 76
    new-instance v0, Lcom/android/calendar/calendarlist/DrawerFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/calendarlist/DrawerFragment$1;-><init>(Lcom/android/calendar/calendarlist/DrawerFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/calendar/calendarlist/DrawerFragment;->mExtraItemsObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/calendarlist/DrawerFragment;)Lcom/android/calendar/calendarlist/DrawerListAdapter;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/calendar/calendarlist/DrawerFragment;->mAdapter:Lcom/android/calendar/calendarlist/DrawerListAdapter;

    return-object v0
.end method

.method private addDrawerClosedListener(Lcom/android/calendar/calendarlist/DrawerFragment$OnDrawerClosedListener;)V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/calendar/calendarlist/DrawerFragment;->mDrawerClosedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    return-void
.end method

.method private removeDrawerClosedListeners()V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/calendar/calendarlist/DrawerFragment;->mDrawerClosedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 301
    return-void
.end method


# virtual methods
.method public getSupportedCommands()J
    .locals 2

    .prologue
    .line 198
    const-wide/16 v0, 0x80

    return-wide v0
.end method

.method public handleCommand(Lcom/android/calendar/CalendarController$Command;)V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/calendar/calendarlist/DrawerFragment;->mAdapter:Lcom/android/calendar/calendarlist/DrawerListAdapter;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/calendar/calendarlist/DrawerFragment;->mAdapter:Lcom/android/calendar/calendarlist/DrawerListAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/calendarlist/DrawerListAdapter;->notifyDataSetChanged()V

    .line 206
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 138
    const-string v0, "DrawerFragment.onActivityCreated"

    invoke-static {v0}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 139
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 141
    iget-object v0, p0, Lcom/android/calendar/calendarlist/DrawerFragment;->mAdapter:Lcom/android/calendar/calendarlist/DrawerListAdapter;

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Lcom/android/calendar/calendarlist/DrawerListAdapter;

    invoke-virtual {p0}, Lcom/android/calendar/calendarlist/DrawerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    new-array v3, v5, [Ljava/lang/Integer;

    .line 144
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    .line 145
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    .line 146
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    .line 147
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    .line 143
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Lcom/android/calendar/calendarlist/DrawerFragment;->mDrawerItemClickedListener:Lcom/android/calendar/calendarlist/DrawerFragment$OnDrawerItemClickedListener;

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/android/calendar/calendarlist/DrawerListAdapter;-><init>(Landroid/app/Activity;ZLjava/util/Set;Lcom/android/calendar/calendarlist/DrawerFragment$OnDrawerItemClickedListener;)V

    iput-object v0, p0, Lcom/android/calendar/calendarlist/DrawerFragment;->mAdapter:Lcom/android/calendar/calendarlist/DrawerListAdapter;

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/calendarlist/DrawerFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/calendar/calendarlist/DrawerFragment;->mAdapter:Lcom/android/calendar/calendarlist/DrawerListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 152
    iget-object v0, p0, Lcom/android/calendar/calendarlist/DrawerFragment;->mAdapter:Lcom/android/calendar/calendarlist/DrawerListAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/calendarlist/DrawerListAdapter;->getDrawerSyncUIManager()Lcom/android/calendar/calendarlist/DrawerSyncUIManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/calendar/calendarlist/DrawerFragment;->addDrawerClosedListener(Lcom/android/calendar/calendarlist/DrawerFragment$OnDrawerClosedListener;)V

    .line 155
    new-instance v0, Lcom/android/calendar/timely/AllCalendarsHiddenDialogManager;

    iget-object v1, p0, Lcom/android/calendar/calendarlist/DrawerFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/calendar/calendarlist/DrawerFragment;->mAdapter:Lcom/android/calendar/calendarlist/DrawerListAdapter;

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/timely/AllCalendarsHiddenDialogManager;-><init>(Landroid/content/Context;Lcom/android/calendar/calendarlist/DrawerListAdapter;)V

    invoke-direct {p0, v0}, Lcom/android/calendar/calendarlist/DrawerFragment;->addDrawerClosedListener(Lcom/android/calendar/calendarlist/DrawerFragment$OnDrawerClosedListener;)V

    .line 158
    iget-object v0, p0, Lcom/android/calendar/calendarlist/DrawerFragment;->mLoadsFinished:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 159
    invoke-virtual {p0}, Lcom/android/calendar/calendarlist/DrawerFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v6, v9, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 160
    invoke-virtual {p0}, Lcom/android/calendar/calendarlist/DrawerFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v7, v9, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 161
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getSelectedCalendarsHelper()Lcom/android/calendar/calendarlist/SelectCalendarsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/calendarlist/DrawerFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/calendar/calendarlist/DrawerFragment;->mExtraItemsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/calendarlist/SelectCalendarsHelper;->registerForChanges(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 166
    invoke-virtual {p0}, Lcom/android/calendar/calendarlist/DrawerFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 167
    invoke-virtual {p0}, Lcom/android/calendar/calendarlist/DrawerFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 169
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 170
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/calendar/calendarlist/DrawerFragment;->mAdapter:Lcom/android/calendar/calendarlist/DrawerListAdapter;

    invoke-virtual {p2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/calendarlist/DrawerListAdapter;->setStatusbarSpacingItemHeight(I)V

    .line 285
    return-object p2
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 102
    const-string v0, "DrawerFragment.onAttach"

    invoke-static {v0}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 103
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 104
    iput-object p1, p0, Lcom/android/calendar/calendarlist/DrawerFragment;->mContext:Landroid/content/Context;

    .line 105
    invoke-static {p1}, Lcom/android/calendar/CalendarController;->getInstance(Landroid/app/Activity;)Lcom/android/calendar/CalendarController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/calendarlist/DrawerFragment;->mController:Lcom/android/calendar/CalendarController;

    .line 106
    iget-object v0, p0, Lcom/android/calendar/calendarlist/DrawerFragment;->mController:Lcom/android/calendar/CalendarController;

    sget v1, Lcom/android/calendar/R$layout;->drawer:I

    invoke-virtual {v0, v1, p0}, Lcom/android/calendar/CalendarController;->registerHandler(ILcom/android/calendar/CalendarController$Command$Handler;)V

    .line 107
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 108
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 221
    packed-switch p1, :pswitch_data_0

    move-object v0, v5

    .line 235
    :goto_0
    return-object v0

    .line 227
    :pswitch_0
    new-instance v0, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lcom/android/calendar/calendarlist/DrawerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/calendar/calendarlist/CalendarListUtils;->PROJECTION:[Ljava/lang/String;

    const-string v4, "NOT(COALESCE(deleted,0))"

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 232
    :pswitch_1
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getBirthdayManager()Lcom/android/calendar/BirthdayManagerInterface;

    move-result-object v0

    .line 233
    invoke-virtual {p0}, Lcom/android/calendar/calendarlist/DrawerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 232
    invoke-interface {v0, v1}, Lcom/android/calendar/BirthdayManagerInterface;->getBirthdaySettingsLoader(Landroid/content/Context;)Landroid/content/Loader;

    move-result-object v0

    goto :goto_0

    .line 221
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 125
    const-string v0, "DrawerFragment.onCreateView"

    invoke-static {v0}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 126
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 128
    sget v0, Lcom/android/calendar/R$layout;->drawer:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 129
    sget v0, Lcom/android/calendar/R$id;->drawer_list:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/calendar/calendarlist/DrawerFragment;->mList:Landroid/widget/ListView;

    .line 130
    iget-object v0, p0, Lcom/android/calendar/calendarlist/DrawerFragment;->mList:Landroid/widget/ListView;

    sget v2, Lcom/android/calendar/R$id;->drawer_empty_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 132
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 133
    return-object v1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 188
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getSelectedCalendarsHelper()Lcom/android/calendar/calendarlist/SelectCalendarsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/calendarlist/DrawerFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/calendar/calendarlist/DrawerFragment;->mExtraItemsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/calendarlist/SelectCalendarsHelper;->unregisterForChanges(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 190
    invoke-direct {p0}, Lcom/android/calendar/calendarlist/DrawerFragment;->removeDrawerClosedListeners()V

    .line 191
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 192
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 118
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 119
    iget-object v0, p0, Lcom/android/calendar/calendarlist/DrawerFragment;->mController:Lcom/android/calendar/CalendarController;

    sget v1, Lcom/android/calendar/R$layout;->drawer:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/CalendarController;->deregisterHandler(Ljava/lang/Integer;)V

    .line 120
    return-void
.end method

.method public onDrawerClosed()V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/calendar/calendarlist/DrawerFragment;->mAdapter:Lcom/android/calendar/calendarlist/DrawerListAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/calendarlist/DrawerListAdapter;->reorderItems()V

    .line 305
    iget-object v0, p0, Lcom/android/calendar/calendarlist/DrawerFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->setSelectionAfterHeaderView()V

    .line 306
    iget-object v0, p0, Lcom/android/calendar/calendarlist/DrawerFragment;->mDrawerClosedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/calendarlist/DrawerFragment$OnDrawerClosedListener;

    .line 307
    invoke-interface {v0}, Lcom/android/calendar/calendarlist/DrawerFragment$OnDrawerClosedListener;->onDrawerClosed()V

    goto :goto_0

    .line 309
    :cond_0
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 240
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    .line 242
    packed-switch v0, :pswitch_data_0

    .line 251
    :goto_0
    iget-object v1, p0, Lcom/android/calendar/calendarlist/DrawerFragment;->mLoadsFinished:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 252
    iget-object v1, p0, Lcom/android/calendar/calendarlist/DrawerFragment;->mLoadsFinished:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/calendarlist/DrawerFragment;->mLoadsFinished:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 266
    :cond_1
    :goto_1
    return-void

    .line 244
    :pswitch_0
    iget-object v1, p0, Lcom/android/calendar/calendarlist/DrawerFragment;->mAdapter:Lcom/android/calendar/calendarlist/DrawerListAdapter;

    invoke-virtual {v1, p2}, Lcom/android/calendar/calendarlist/DrawerListAdapter;->swapCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 247
    :pswitch_1
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getBirthdayManager()Lcom/android/calendar/BirthdayManagerInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/calendarlist/DrawerFragment;->mBirthdaysSettings:Ljava/util/Map;

    invoke-interface {v1, p2, v2}, Lcom/android/calendar/BirthdayManagerInterface;->processCursor(Landroid/database/Cursor;Ljava/util/Map;)V

    goto :goto_0

    .line 259
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/calendarlist/DrawerFragment;->mAdapter:Lcom/android/calendar/calendarlist/DrawerListAdapter;

    iget-object v1, p0, Lcom/android/calendar/calendarlist/DrawerFragment;->mBirthdaysSettings:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/android/calendar/calendarlist/DrawerListAdapter;->setBirthdaysSettings(Ljava/util/Map;)V

    .line 261
    invoke-virtual {p0}, Lcom/android/calendar/calendarlist/DrawerFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 242
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 55
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/calendarlist/DrawerFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/calendar/calendarlist/DrawerFragment;->mAdapter:Lcom/android/calendar/calendarlist/DrawerListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/calendar/calendarlist/DrawerListAdapter;->swapCursor(Landroid/database/Cursor;)V

    .line 271
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 113
    iget-object v0, p0, Lcom/android/calendar/calendarlist/DrawerFragment;->mAdapter:Lcom/android/calendar/calendarlist/DrawerListAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/calendarlist/DrawerListAdapter;->reorderItems()V

    .line 114
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 174
    const-string v0, "DrawerFragment.onStart"

    invoke-static {v0}, Lcom/android/bitmap/util/Trace;->beginSection(Ljava/lang/String;)V

    .line 175
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 176
    iget-object v0, p0, Lcom/android/calendar/calendarlist/DrawerFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/ExtensionsFactory;->getAccountPhotoFactory(Landroid/content/Context;)Lcom/android/calendar/AccountPhotoFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/AccountPhotoFactory;->onStart()V

    .line 177
    invoke-static {}, Lcom/android/bitmap/util/Trace;->endSection()V

    .line 178
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/calendar/calendarlist/DrawerFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/ExtensionsFactory;->getAccountPhotoFactory(Landroid/content/Context;)Lcom/android/calendar/AccountPhotoFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/AccountPhotoFactory;->onStop()V

    .line 183
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 184
    return-void
.end method

.method public refreshViewSwitcherIcons()V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/calendar/calendarlist/DrawerFragment;->mAdapter:Lcom/android/calendar/calendarlist/DrawerListAdapter;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/calendar/calendarlist/DrawerFragment;->mAdapter:Lcom/android/calendar/calendarlist/DrawerListAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/calendarlist/DrawerListAdapter;->refreshViewSwitcherIcons()V

    .line 293
    :cond_0
    return-void
.end method

.method public setDrawerItemClickedListener(Lcom/android/calendar/calendarlist/DrawerFragment$OnDrawerItemClickedListener;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/calendar/calendarlist/DrawerFragment;->mDrawerItemClickedListener:Lcom/android/calendar/calendarlist/DrawerFragment$OnDrawerItemClickedListener;

    .line 314
    return-void
.end method
