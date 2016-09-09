.class public Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;
.super Lcom/android/calendar/timely/settings/BirthdayPreferences;
.source "TimelyBirthdayPreferences.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcom/android/calendar/editor/AspectAdapter;
.implements Lcom/android/calendar/editor/EditSegmentController;
.implements Lcom/android/calendar/event/data/InputAspectColor;
.implements Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$BirthdayAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/timely/settings/BirthdayPreferences;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/android/calendar/editor/AspectAdapter;",
        "Lcom/android/calendar/editor/EditSegmentController;",
        "Lcom/android/calendar/event/data/InputAspectColor;",
        "Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$BirthdayAdapter;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccountsInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;",
            ">;"
        }
    .end annotation
.end field

.field private mAccountsSettings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;",
            ">;"
        }
    .end annotation
.end field

.field private mBirthdayAspect:Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$BirthdayAspect;

.field private mColorAtom:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Color;",
            ">;"
        }
    .end annotation
.end field

.field private mColorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Color;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitialAccountsInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadingStateManager:Lcom/android/calendar/timely/LoadingStateManager;

.field private mLoadsFinished:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPrimaryBirthdayCalendar:Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;

.field private mResources:Landroid/content/res/Resources;

.field private mSegmentIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

.field private mSegmentsView:Landroid/view/ViewGroup;

.field private mTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-class v0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/calendar/timely/settings/BirthdayPreferences;-><init>()V

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mAccountsInfo:Ljava/util/Map;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mInitialAccountsInfo:Ljava/util/Map;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mSegmentIdsToAccounts:Ljava/util/Map;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mSegmentIds:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mAccountsSettings:Ljava/util/HashMap;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mLoadsFinished:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$BirthdayAspect;

    invoke-direct {v0}, Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$BirthdayAspect;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mBirthdayAspect:Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$BirthdayAspect;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;)Lcom/google/android/syncadapters/calendar/timely/TimelyStore;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    return-object v0
.end method

.method private prepareViews()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 314
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mSegmentsView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 316
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 317
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 318
    const-string v1, "key_color_list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "key_color"

    .line 319
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    const-string v0, "com.android.calendar.settings.calendar.color"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 323
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mSegmentIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 324
    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mSegmentIdsToAccounts:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 325
    iget-object v5, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/android/calendar/R$string;->settings_google_account:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    .line 326
    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 325
    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 331
    :cond_1
    new-instance v0, Lcom/google/android/calendar/timely/settings/TimelyPreferencesEditSegmentFactory;

    .line 333
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mSegmentIdsToAccounts:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/calendar/timely/settings/TimelyPreferencesEditSegmentFactory;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V

    .line 334
    const-string v1, "com.google.android.calendar.timely.settings"

    iget-object v2, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mSegmentsView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0, v1, v2, v9}, Lcom/google/android/calendar/timely/settings/TimelyPreferencesEditSegmentFactory;->createAndAddEditSegments(Lcom/android/calendar/editor/EditSegmentController;Ljava/lang/String;Landroid/view/ViewGroup;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mSegments:Ljava/util/Collection;

    .line 339
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mSegments:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/editor/EditSegment;

    .line 340
    invoke-virtual {v0, p0}, Lcom/android/calendar/editor/EditSegment;->setInput(Ljava/lang/Object;)V

    goto :goto_1

    .line 344
    :cond_2
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/calendar/R$layout;->setting_segment_disclaimer:I

    invoke-virtual {v0, v1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 346
    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/calendar/R$string;->settings_birthday_label:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mSegmentsView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 348
    return-void
.end method

.method private readFragmentArguments()V
    .locals 2

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 354
    if-eqz v0, :cond_1

    .line 355
    const-string v1, "key_color_list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 356
    const-string v1, "key_color_list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    invoke-static {v1}, Lcom/android/calendar/ColorCache;->getColorList([I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mColorList:Ljava/util/List;

    .line 360
    :cond_0
    const-string v1, "key_color"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 361
    const-string v1, "key_color"

    .line 362
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 361
    invoke-static {v0}, Lcom/android/calendar/Utils;->intToColor(I)Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v0

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->from(Ljava/lang/Object;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mColorAtom:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mColorAtom:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    if-nez v0, :cond_2

    .line 367
    const v0, -0x777778

    invoke-static {v0}, Lcom/android/calendar/Utils;->intToColor(I)Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v0

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->from(Ljava/lang/Object;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mColorAtom:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 370
    :cond_2
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mColorList:Ljava/util/List;

    if-nez v0, :cond_3

    .line 371
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mColorList:Ljava/util/List;

    .line 372
    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mColorList:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mColorAtom:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/Color;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    :cond_3
    return-void
.end method


# virtual methods
.method public addColorRefreshListener(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 439
    return-void
.end method

.method public applyChangeAnimated(Ljava/lang/String;Ljava/lang/Runnable;Lcom/android/calendar/editor/ChangeAnimationDescriptor;)Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 391
    const/4 v0, 0x0

    return-object v0
.end method

.method public canChangeColor()Z
    .locals 1

    .prologue
    .line 412
    const/4 v0, 0x1

    return v0
.end method

.method public getColorOptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Color;",
            ">;"
        }
    .end annotation

    .prologue
    .line 433
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mColorList:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultColor()Lcom/google/calendar/v2/client/service/api/common/Color;
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mColorList:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mColorAtom:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mColorAtom:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/Color;

    goto :goto_0
.end method

.method public getInitialChecked(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mInitialAccountsInfo:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mInitialAccountsInfo:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;

    invoke-virtual {v0}, Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;->getMode()I

    move-result v0

    .line 398
    :goto_0
    return v0

    .line 400
    :cond_0
    invoke-static {}, Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;->getMissingMode()I

    move-result v0

    goto :goto_0
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

    .line 450
    sget-object v1, Lcom/android/calendar/timely/settings/CalendarPreferences;->COLOR_ASPECT:Lcom/android/calendar/editor/AspectKey;

    invoke-virtual {v1, p1}, Lcom/android/calendar/editor/AspectKey;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 451
    invoke-virtual {p1, p0}, Lcom/android/calendar/editor/AspectKey;->castAspect(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 461
    :cond_0
    :goto_0
    return-object v0

    .line 453
    :cond_1
    invoke-virtual {p1}, Lcom/android/calendar/editor/AspectKey;->getAspectId()Ljava/lang/String;

    move-result-object v1

    .line 454
    if-eqz v1, :cond_0

    .line 456
    const-string v2, "com.google.android.calendar.timely.settings.birthday."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 458
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mBirthdayAspect:Lcom/google/android/calendar/timely/settings/segment/BirthdayEditSegment$BirthdayAspect;

    invoke-virtual {p1, v0}, Lcom/android/calendar/editor/AspectKey;->castAspect(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getUnlistedColor()Lcom/google/calendar/v2/client/service/api/common/Color;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mColorAtom:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/Color;

    return-object v0
.end method

.method public isFullScreen(Lcom/android/calendar/editor/EditSegment;)Z
    .locals 1

    .prologue
    .line 385
    const/4 v0, 0x0

    return v0
.end method

.method public mutableColor()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Lcom/google/calendar/v2/client/service/api/common/Color;",
            ">;"
        }
    .end annotation

    .prologue
    .line 417
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mColorAtom:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 134
    invoke-super {p0, p1}, Lcom/android/calendar/timely/settings/BirthdayPreferences;->onActivityCreated(Landroid/os/Bundle;)V

    .line 137
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_0

    .line 140
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 144
    :cond_0
    invoke-direct {p0}, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->readFragmentArguments()V

    .line 145
    if-eqz p1, :cond_1

    const-string v0, "key_color"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    const-string v0, "key_color"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/api/common/Color;->fromInt(I)Lcom/google/calendar/v2/client/service/api/common/Color;

    move-result-object v0

    invoke-static {v0}, Lcom/google/calendar/v2/client/service/common/ObservableAtoms;->from(Ljava/lang/Object;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mColorAtom:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mLoadsFinished:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 152
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 153
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 154
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/android/calendar/timely/settings/BirthdayPreferences;->onAttach(Landroid/app/Activity;)V

    .line 110
    invoke-static {p1}, Lcom/google/android/syncadapters/calendar/timely/TimelyStore;->acquire(Landroid/content/Context;)Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mTimelyStore:Lcom/google/android/syncadapters/calendar/timely/TimelyStore;

    .line 111
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mResources:Landroid/content/res/Resources;

    .line 112
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/android/calendar/timely/settings/BirthdayPreferences;->onCreate(Landroid/os/Bundle;)V

    .line 103
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->setHasOptionsMenu(Z)V

    .line 104
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

    .line 158
    packed-switch p1, :pswitch_data_0

    move-object v0, v5

    .line 167
    :goto_0
    return-object v0

    .line 160
    :pswitch_0
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getBirthdayManager()Lcom/android/calendar/BirthdayManagerInterface;

    move-result-object v0

    .line 161
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 160
    invoke-interface {v0, v1}, Lcom/android/calendar/BirthdayManagerInterface;->getBirthdaySettingsLoader(Landroid/content/Context;)Landroid/content/Loader;

    move-result-object v0

    goto :goto_0

    .line 163
    :pswitch_1
    new-instance v0, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/calendar/calendarlist/CalendarListUtils;->PROJECTION:[Ljava/lang/String;

    const-string v4, "((ownerAccount = \'#contacts@group.v.calendar.google.com\') OR (ownerAccount = \'addressbook#contacts@group.v.calendar.google.com\'))"

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 158
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 299
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 300
    sget v0, Lcom/android/calendar/R$menu;->birthday_settings_menu:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 301
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 117
    iput-object p1, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mInflater:Landroid/view/LayoutInflater;

    .line 119
    sget v0, Lcom/android/calendar/R$layout;->loading_segments_preferences_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 122
    sget v0, Lcom/android/calendar/R$id;->segments:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mSegmentsView:Landroid/view/ViewGroup;

    .line 125
    new-instance v0, Lcom/android/calendar/timely/LoadingStateManager;

    sget v2, Lcom/android/calendar/R$id;->scroll_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$id;->loading_view:I

    .line 126
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/android/calendar/timely/LoadingStateManager;-><init>(Landroid/view/View;Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mLoadingStateManager:Lcom/android/calendar/timely/LoadingStateManager;

    .line 127
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mLoadingStateManager:Lcom/android/calendar/timely/LoadingStateManager;

    invoke-virtual {v0}, Lcom/android/calendar/timely/LoadingStateManager;->startLoadingPhases()V

    .line 129
    return-object v1
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 9
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
    .line 172
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    .line 174
    packed-switch v0, :pswitch_data_0

    .line 185
    :goto_0
    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mLoadsFinished:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mLoadsFinished:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mLoadsFinished:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 222
    :goto_1
    return-void

    .line 176
    :pswitch_0
    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mAccountsSettings:Ljava/util/HashMap;

    invoke-static {p2, v1}, Lcom/google/android/calendar/extensions/BirthdayManager;->processSettingsCursor(Landroid/database/Cursor;Ljava/util/Map;)V

    goto :goto_0

    .line 180
    :pswitch_1
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getBirthdayManager()Lcom/android/calendar/BirthdayManagerInterface;

    move-result-object v1

    .line 181
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Lcom/android/calendar/BirthdayManagerInterface;->getPrimaryBirthdayCalendar(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mPrimaryBirthdayCalendar:Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;

    goto :goto_0

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mAccountsInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 195
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mInitialAccountsInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 196
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mSegmentIdsToAccounts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 197
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mSegmentIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 200
    new-instance v3, Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;

    invoke-static {}, Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;->getMissingMode()I

    move-result v0

    invoke-direct {v3, v0}, Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;-><init>(I)V

    .line 201
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/calendar/Accounts;->getGoogleAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v4

    array-length v5, v4

    const/4 v0, 0x0

    move v2, v0

    :goto_2
    if-ge v2, v5, :cond_4

    aget-object v6, v4, v2

    .line 203
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mAccountsSettings:Ljava/util/HashMap;

    iget-object v1, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 204
    new-instance v1, Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;

    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mAccountsSettings:Ljava/util/HashMap;

    iget-object v7, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;

    invoke-direct {v1, v0}, Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;-><init>(Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;)V

    .line 205
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mInitialAccountsInfo:Ljava/util/Map;

    iget-object v7, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    new-instance v8, Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;

    invoke-direct {v8, v1}, Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;-><init>(Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;)V

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 211
    :goto_3
    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mAccountsInfo:Ljava/util/Map;

    iget-object v7, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string v0, "com.google.android.calendar.timely.settings.birthday."

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    :goto_4
    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mSegmentIdsToAccounts:Ljava/util/Map;

    invoke-interface {v1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object v1, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mSegmentIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 209
    :cond_2
    new-instance v0, Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;

    invoke-direct {v0, v3}, Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;-><init>(Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;)V

    goto :goto_3

    .line 214
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 220
    :cond_4
    invoke-direct {p0}, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->prepareViews()V

    .line 221
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mLoadingStateManager:Lcom/android/calendar/timely/LoadingStateManager;

    invoke-virtual {v0}, Lcom/android/calendar/timely/LoadingStateManager;->onDataLoaded()V

    goto/16 :goto_1

    .line 174
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 64
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 1
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
    .line 226
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mAccountsInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 227
    return-void
.end method

.method public onModeChanged(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mAccountsInfo:Ljava/util/Map;

    new-instance v1, Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;

    invoke-direct {v1, p2}, Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;-><init>(I)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 305
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/android/calendar/R$id;->birthday_setting_help_menu_item:I

    if-ne v0, v1, :cond_0

    .line 307
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->birthday_holiday_help_context:I

    invoke-virtual {p0, v1}, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 306
    invoke-static {v0, v1, v2}, Lcom/google/android/calendar/timely/GoogleFeedbackUtils;->launchHelpAndFeedback(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 308
    const/4 v0, 0x1

    .line 310
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 231
    invoke-super {p0}, Lcom/android/calendar/timely/settings/BirthdayPreferences;->onPause()V

    .line 234
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 236
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mAccountsInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 237
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;

    iget-object v4, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mInitialAccountsInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 238
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mInitialAccountsInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 244
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mAccountsInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 245
    iget-object v4, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mInitialAccountsInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/syncadapters/calendar/timely/BirthdaySetting;

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 249
    :cond_2
    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mColorAtom:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/Color;

    .line 250
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v3, "preferences_birthdays_color"

    .line 251
    invoke-static {v0}, Lcom/android/calendar/Utils;->colorToInt(Lcom/google/calendar/v2/client/service/api/common/Color;)I

    move-result v4

    .line 250
    invoke-static {v1, v3, v4}, Lcom/android/calendar/Utils;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;I)V

    .line 254
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/calendar/extensions/BirthdayManager;->getBirthdayHolidayPrimaryAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v3

    .line 258
    invoke-virtual {p0}, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/timely/settings/CalendarPreferences$OnChangeListener;

    .line 262
    sget-object v4, Lcom/android/calendar/timely/settings/CalendarSettingsActivity;->BIRTHDAY_STANDIN_URI:Landroid/net/Uri;

    invoke-interface {v1, v4, v3, v0, v6}, Lcom/android/calendar/timely/settings/CalendarPreferences$OnChangeListener;->onChangeColor(Landroid/net/Uri;Landroid/accounts/Account;Lcom/google/calendar/v2/client/service/api/common/Color;Z)V

    .line 266
    iget-object v4, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mPrimaryBirthdayCalendar:Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;

    if-eqz v4, :cond_3

    .line 267
    iget-object v4, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mPrimaryBirthdayCalendar:Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;

    iget-object v4, v4, Lcom/android/calendar/calendarlist/CalendarListUtils$CalendarItem;->uri:Landroid/net/Uri;

    const/4 v5, 0x1

    invoke-interface {v1, v4, v3, v0, v5}, Lcom/android/calendar/timely/settings/CalendarPreferences$OnChangeListener;->onChangeColor(Landroid/net/Uri;Landroid/accounts/Account;Lcom/google/calendar/v2/client/service/api/common/Color;Z)V

    .line 271
    :cond_3
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 272
    new-instance v0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences$1;

    invoke-direct {v0, p0, v2}, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences$1;-><init>(Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;Ljava/util/Map;)V

    new-array v1, v6, [Ljava/lang/Void;

    .line 288
    invoke-virtual {v0, v1}, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 290
    :cond_4
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 294
    const-string v1, "key_color"

    iget-object v0, p0, Lcom/google/android/calendar/timely/settings/TimelyBirthdayPreferences;->mColorAtom:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/calendar/v2/client/service/api/common/Color;

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/common/Color;->toInt()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 295
    return-void
.end method

.method public removeColorRefreshListener(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 444
    return-void
.end method

.method public setFullScreen(Lcom/android/calendar/editor/EditSegment;Z)V
    .locals 0

    .prologue
    .line 381
    return-void
.end method
