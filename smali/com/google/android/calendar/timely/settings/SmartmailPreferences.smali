.class public Lcom/google/android/calendar/timely/settings/SmartmailPreferences;
.super Landroid/preference/PreferenceFragment;
.source "SmartmailPreferences.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcom/android/calendar/editor/AspectAdapter;
.implements Lcom/android/calendar/editor/EditSegmentController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/timely/settings/SmartmailPreferences$UpdateAsyncTask;,
        Lcom/google/android/calendar/timely/settings/SmartmailPreferences$SmartmailDeliveryPair;,
        Lcom/google/android/calendar/timely/settings/SmartmailPreferences$ObservableSmartmailDeliveryPair;,
        Lcom/google/android/calendar/timely/settings/SmartmailPreferences$SmartmailDeliveryPairListener;,
        Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/preference/PreferenceFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/android/calendar/editor/AspectAdapter;",
        "Lcom/android/calendar/editor/EditSegmentController;"
    }
.end annotation


# static fields
.field private static final ACCOUNT_SETTINGS_PROJECTION:[Ljava/lang/String;

.field private static final CALENDAR_SETTINGS_PROJECTION:[Ljava/lang/String;

.field public static final DEFAULT_VISIBILITY:Lcom/google/calendar/v2/client/service/api/events/PrivacyType;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDiff:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/accounts/Account;",
            "Lcom/google/android/calendar/timely/settings/SmartmailPreferences$SmartmailDeliveryPair;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadingStateManager:Lcom/android/calendar/timely/LoadingStateManager;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSegmentIdsToAccounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private mSegmentIdsToSmartmail:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;",
            ">;"
        }
    .end annotation
.end field

.field private mSegments:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/calendar/editor/EditSegment",
            "<*>;>;"
        }
    .end annotation
.end field

.field private mTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    const-class v0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->TAG:Ljava/lang/String;

    .line 63
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "accountName"

    aput-object v1, v0, v2

    const-string v1, "smartMailDelivery"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->ACCOUNT_SETTINGS_PROJECTION:[Ljava/lang/String;

    .line 66
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "ownerAccount"

    aput-object v1, v0, v2

    const-string v1, "cal_sync9"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->CALENDAR_SETTINGS_PROJECTION:[Ljava/lang/String;

    .line 91
    sget-object v0, Lcom/google/calendar/v2/client/service/api/events/PrivacyType;->SECRET:Lcom/google/calendar/v2/client/service/api/events/PrivacyType;

    sput-object v0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->DEFAULT_VISIBILITY:Lcom/google/calendar/v2/client/service/api/events/PrivacyType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getDiff()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Landroid/accounts/Account;",
            "Lcom/google/android/calendar/timely/settings/SmartmailPreferences$SmartmailDeliveryPair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 219
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->mSegmentIdsToSmartmail:Ljava/util/Map;

    if-nez v0, :cond_0

    move-object v0, v2

    .line 235
    :goto_0
    return-object v0

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->mSegmentIdsToSmartmail:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 225
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;

    .line 226
    invoke-virtual {v1}, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;->hasChanged()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 227
    iget-object v4, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->mSegmentIdsToAccounts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 228
    invoke-virtual {v1}, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;->computeCurrentSetting()Lcom/google/android/calendar/timely/settings/SmartmailPreferences$SmartmailDeliveryPair;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    invoke-virtual {v1}, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;->resetOriginal()V

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 235
    goto :goto_0
.end method

.method private prepareViews()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 240
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->mSegmentIdsToAccounts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 241
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 242
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 243
    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->mSegmentIdsToAccounts:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 245
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/calendar/R$string;->settings_google_account:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 244
    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 248
    :cond_0
    new-instance v1, Lcom/google/android/calendar/timely/settings/TimelyPreferencesEditSegmentFactory;

    .line 250
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->mSegmentIdsToAccounts:Ljava/util/Map;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/android/calendar/timely/settings/TimelyPreferencesEditSegmentFactory;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V

    .line 251
    const-string v2, "com.google.android.calendar.timely.settings"

    .line 254
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->getView()Landroid/view/View;

    move-result-object v0

    sget v3, Lcom/android/calendar/R$id;->segments:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 251
    invoke-virtual {v1, p0, v2, v0, v9}, Lcom/google/android/calendar/timely/settings/TimelyPreferencesEditSegmentFactory;->createAndAddEditSegments(Lcom/android/calendar/editor/EditSegmentController;Ljava/lang/String;Landroid/view/ViewGroup;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->mSegments:Ljava/util/Collection;

    .line 258
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->mSegments:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/editor/EditSegment;

    .line 259
    invoke-virtual {v0, p0}, Lcom/android/calendar/editor/EditSegment;->setInput(Ljava/lang/Object;)V

    .line 262
    iget-object v2, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    .line 263
    iget-object v2, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Lcom/android/calendar/editor/EditSegment;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 266
    :cond_1
    iput-object v9, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->mSavedInstanceState:Landroid/os/Bundle;

    goto :goto_1

    .line 268
    :cond_2
    return-void
.end method


# virtual methods
.method public applyChangeAnimated(Ljava/lang/String;Ljava/lang/Runnable;Lcom/android/calendar/editor/ChangeAnimationDescriptor;)Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 391
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInputAspect(Lcom/android/calendar/editor/AspectKey;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<AspectType:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/calendar/editor/AspectKey",
            "<TAspectType;>;)TAspectType;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 404
    if-nez p1, :cond_1

    .line 416
    :cond_0
    :goto_0
    return-object v0

    .line 408
    :cond_1
    invoke-virtual {p1}, Lcom/android/calendar/editor/AspectKey;->getAspectId()Ljava/lang/String;

    move-result-object v1

    .line 409
    if-eqz v1, :cond_0

    .line 411
    const-string v2, "com.google.android.calendar.timely.settings.smartmail."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 413
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->mSegmentIdsToSmartmail:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/calendar/editor/AspectKey;->castAspect(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public isFullScreen(Lcom/android/calendar/editor/EditSegment;)Z
    .locals 1

    .prologue
    .line 385
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 148
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 151
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_0

    .line 153
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 155
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 114
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    .line 115
    invoke-static {v0}, Lcom/android/calendar/timely/settings/PreferencesUtils;->getSharedPrefsName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 114
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 118
    invoke-static {v0}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->acquire(Landroid/content/Context;)Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->mTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    .line 120
    if-eqz p1, :cond_0

    const-string v0, "key_diff"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    const-string v0, "key_diff"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->mDiff:Ljava/util/HashMap;

    .line 124
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->setHasOptionsMenu(Z)V

    .line 126
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 127
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 8
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

    .line 275
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 276
    new-instance v0, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->CALENDAR_SETTINGS_PROJECTION:[Ljava/lang/String;

    const-string v4, "COALESCE(isPrimary,account_name=ownerAccount) = 1 AND account_type = \'com.google\'"

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget-object v3, Lcom/google/android/syncadapters/calendar/timely/TimelyContract;->ACCOUNT_SETTINGS_URI:Landroid/net/Uri;

    sget-object v4, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->ACCOUNT_SETTINGS_PROJECTION:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-direct/range {v1 .. v7}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 197
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 198
    sget v0, Lcom/android/calendar/R$menu;->smartmail_settings_menu:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 199
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 132
    sget v0, Lcom/android/calendar/R$layout;->loading_segments_preferences_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 134
    if-eqz p3, :cond_0

    .line 137
    iput-object p3, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->mSavedInstanceState:Landroid/os/Bundle;

    .line 139
    :cond_0
    new-instance v1, Lcom/android/calendar/timely/LoadingStateManager;

    sget v2, Lcom/android/calendar/R$id;->scroll_view:I

    .line 140
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$id;->loading_view:I

    .line 141
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/calendar/timely/LoadingStateManager;-><init>(Landroid/view/View;Landroid/view/View;)V

    iput-object v1, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->mLoadingStateManager:Lcom/android/calendar/timely/LoadingStateManager;

    .line 142
    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->mLoadingStateManager:Lcom/android/calendar/timely/LoadingStateManager;

    invoke-virtual {v1}, Lcom/android/calendar/timely/LoadingStateManager;->startLoadingPhases()V

    .line 144
    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 13
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
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 293
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->mLoadingStateManager:Lcom/android/calendar/timely/LoadingStateManager;

    invoke-virtual {v0}, Lcom/android/calendar/timely/LoadingStateManager;->isDataLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    :goto_0
    return-void

    .line 299
    :cond_0
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    if-ne v0, v11, :cond_6

    .line 300
    if-nez p2, :cond_1

    .line 301
    sget-object v0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->TAG:Ljava/lang/String;

    const-string v1, "Null cursor in SmartmailPreferences#onLoadFinished"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 305
    :cond_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 307
    :cond_2
    const-string v0, "com.google.android.calendar.timely.settings.smartmail."

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 308
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 309
    :goto_1
    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->mSegmentIdsToSmartmail:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;

    .line 310
    if-eqz v0, :cond_3

    .line 311
    invoke-virtual {v0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;->mutableIsSharedCalendar()Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    move-result-object v0

    const-string v1, "cal_sync9"

    .line 312
    invoke-static {p2, v1}, Lcom/android/calendar/Utils;->isCalendarShared(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v1

    .line 311
    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->set(Z)V

    .line 314
    :cond_3
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 316
    :cond_4
    invoke-direct {p0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->prepareViews()V

    .line 317
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->mLoadingStateManager:Lcom/android/calendar/timely/LoadingStateManager;

    invoke-virtual {v0}, Lcom/android/calendar/timely/LoadingStateManager;->onDataLoaded()V

    goto :goto_0

    .line 308
    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 322
    :cond_6
    invoke-static {p2}, Lcom/google/android/syncadapters/calendar/timely/TimelyUtils;->getSmartmailSettingsFromCursor(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object v3

    .line 324
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->mSegmentIdsToSmartmail:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 325
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->mSegmentIdsToSmartmail:Ljava/util/Map;

    .line 330
    :goto_2
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->mSegmentIdsToAccounts:Ljava/util/Map;

    if-nez v0, :cond_7

    .line 331
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->mSegmentIdsToAccounts:Ljava/util/Map;

    .line 334
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/Accounts;->getGoogleAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v4

    array-length v5, v4

    move v1, v2

    :goto_3
    if-ge v1, v5, :cond_d

    aget-object v6, v4, v1

    .line 335
    const-string v0, "com.android.calendar"

    invoke-static {v6, v0}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_a

    .line 336
    iget-object v0, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 338
    iget-object v7, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->mDiff:Ljava/util/HashMap;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->mDiff:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 340
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->mDiff:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$SmartmailDeliveryPair;

    invoke-virtual {v0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$SmartmailDeliveryPair;->getSmartmailSetting()Ljava/lang/String;

    move-result-object v0

    .line 343
    :cond_8
    if-nez v0, :cond_9

    .line 346
    sget-object v7, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->TAG:Ljava/lang/String;

    const-string v8, "Unable to find timely settings for %s"

    new-array v9, v11, [Ljava/lang/Object;

    iget-object v10, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v10, v9, v2

    invoke-static {v7, v8, v9}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 348
    :cond_9
    new-instance v7, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;

    invoke-direct {v7, v0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;-><init>(Ljava/lang/String;)V

    .line 349
    const-string v0, "com.google.android.calendar.timely.settings.smartmail."

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iget-object v0, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_c

    invoke-virtual {v8, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 352
    :goto_4
    iget-object v8, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->mSegmentIdsToSmartmail:Ljava/util/Map;

    invoke-interface {v8, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    iget-object v8, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->mSegmentIdsToAccounts:Ljava/util/Map;

    invoke-interface {v8, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    invoke-virtual {v7}, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;->currentSettingPair()Lcom/google/android/calendar/timely/settings/SmartmailPreferences$ObservableSmartmailDeliveryPair;

    move-result-object v0

    new-instance v7, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$SmartmailDeliveryPairListener;

    iget-object v8, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->mTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    invoke-direct {v7, v8, v6}, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$SmartmailDeliveryPairListener;-><init>(Lcom/google/android/syncadapters/calendar/timely/TimelyStore;Landroid/accounts/Account;)V

    invoke-virtual {v0, v7}, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$ObservableSmartmailDeliveryPair;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 334
    :cond_a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 327
    :cond_b
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->mSegmentIdsToSmartmail:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto/16 :goto_2

    .line 349
    :cond_c
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 363
    :cond_d
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->mDiff:Ljava/util/HashMap;

    if-eqz v0, :cond_e

    .line 364
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->mDiff:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 365
    iput-object v12, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->mDiff:Ljava/util/HashMap;

    .line 367
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v11, v12, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto/16 :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 57
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
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
    .line 373
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 203
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/android/calendar/R$id;->smartmail_setting_help_menu_item:I

    if-ne v0, v1, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->events_from_gmail_help_context:I

    invoke-virtual {p0, v1}, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 204
    invoke-static {v0, v1, v2}, Lcom/google/android/calendar/timely/GoogleFeedbackUtils;->launchHelpAndFeedback(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 206
    const/4 v0, 0x1

    .line 208
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 160
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 163
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->mSegmentIdsToSmartmail:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 171
    :cond_0
    return-void

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->mSegmentIdsToSmartmail:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 169
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;

    invoke-virtual {v0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$InputAspectSmartmail;->currentSettingPair()Lcom/google/android/calendar/timely/settings/SmartmailPreferences$ObservableSmartmailDeliveryPair;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferences$ObservableSmartmailDeliveryPair;->dispose()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->mDiff:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 179
    invoke-direct {p0}, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->getDiff()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->mDiff:Ljava/util/HashMap;

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->mDiff:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 182
    const-string v0, "key_diff"

    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->mDiff:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->mSegments:Ljava/util/Collection;

    if-eqz v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/SmartmailPreferences;->mSegments:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/editor/EditSegment;

    .line 188
    invoke-virtual {v0, p1}, Lcom/android/calendar/editor/EditSegment;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 192
    :cond_2
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 193
    return-void
.end method

.method public setFullScreen(Lcom/android/calendar/editor/EditSegment;Z)V
    .locals 0

    .prologue
    .line 381
    return-void
.end method
