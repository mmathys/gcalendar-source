.class public Lcom/android/calendar/timely/FindTimeControllerFragment;
.super Landroid/app/Fragment;
.source "FindTimeControllerFragment.java"

# interfaces
.implements Lcom/android/calendar/event/FindTimeSuggestionUi$Listener;
.implements Lcom/android/calendar/timely/FindTimeGridUi$Listener;
.implements Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment$Listener;
.implements Lcom/android/calendar/timely/net/BaseClient$OnRequestFinishedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/timely/FindTimeControllerFragment$OnFinishListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Fragment;",
        "Lcom/android/calendar/event/FindTimeSuggestionUi$Listener;",
        "Lcom/android/calendar/timely/FindTimeGridUi$Listener;",
        "Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment$Listener;",
        "Lcom/android/calendar/timely/net/BaseClient$OnRequestFinishedListener",
        "<",
        "Lcom/android/calendar/timely/net/FindTimeClient$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAttendees:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/timely/FindTimeAttendee;",
            ">;"
        }
    .end annotation
.end field

.field protected mClient:Lcom/android/calendar/timely/net/FindTimeClient;

.field protected mClientResult:Lcom/android/calendar/timely/net/FindTimeClient$Result;

.field protected mEventColor:I

.field private mGridUi:Lcom/android/calendar/timely/FindTimeGridUi;

.field private mNeedsRestoreState:Z

.field protected mOnFinishListener:Lcom/android/calendar/timely/FindTimeControllerFragment$OnFinishListener;

.field private mSavedConsiderExistingRooms:Z

.field private mSavedTimeframe:Lcom/android/calendar/timely/FindTimeTimeframe;

.field private mState:I

.field private mSuggestionIndex:I

.field private mSuggestionRows:Lcom/android/calendar/timely/SuggestionRows;

.field private mSuggestionUi:Lcom/android/calendar/event/FindTimeSuggestionUi;

.field private mTimezone:Ljava/util/TimeZone;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    const-class v0, Lcom/android/calendar/timely/FindTimeControllerFragment;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/FindTimeControllerFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method protected static addArguments(Landroid/os/Bundle;IJJILjava/util/List;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "IJJI",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/FindTimeAttendee;",
            ">;",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 160
    if-nez p8, :cond_0

    .line 161
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Account argument is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 163
    :cond_0
    if-nez p7, :cond_1

    .line 164
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Attendees argument is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 166
    :cond_1
    const-string v1, "com.google.android.gm.exchange"

    iget-object v2, p8, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.google"

    iget-object v2, p8, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 167
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 168
    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget-object v2, p8, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1b

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Account type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not supported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 171
    :cond_2
    const-string v1, "type"

    invoke-virtual {p0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 172
    const-string v1, "event_color"

    invoke-virtual {p0, v1, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 174
    instance-of v1, p7, Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 175
    check-cast p7, Ljava/util/ArrayList;

    .line 177
    :goto_0
    new-instance v1, Lcom/android/calendar/timely/FindTimeAttendee$RequesterFirstComparator;

    iget-object v2, p8, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/android/calendar/timely/FindTimeAttendee$RequesterFirstComparator;-><init>(Ljava/lang/String;)V

    invoke-static {p7, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 179
    const-string v1, "attendees"

    invoke-virtual {p0, v1, p7}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 181
    const-string v1, "account"

    invoke-virtual {p0, v1, p8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 182
    const-string v1, "startMillis"

    invoke-virtual {p0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 183
    const-string v1, "endMillis"

    invoke-virtual {p0, v1, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 184
    const-string v1, "timezone"

    invoke-virtual {p0, v1, p9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v1, "event_reference_id"

    move-object/from16 v0, p10

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v1, "is_recurring_event"

    move/from16 v0, p11

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 187
    const-string v1, "is_test_environment"

    move/from16 v0, p12

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 188
    return-void

    .line 176
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p7, v1

    goto :goto_0
.end method

.method private getAttendees(Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/FindTimeAttendee;",
            ">;"
        }
    .end annotation

    .prologue
    .line 660
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mAttendees:Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 661
    if-eqz p1, :cond_1

    iget-boolean v0, p1, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->considerExistingRooms:Z

    if-nez v0, :cond_1

    .line 662
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mAttendees:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/FindTimeAttendee;

    .line 663
    invoke-virtual {v0}, Lcom/android/calendar/timely/FindTimeAttendee;->isRoom()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 664
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 668
    :cond_1
    return-object v1
.end method

.method private getBackendSuggestionPosition(Lcom/android/calendar/timely/TimelineSuggestion;)I
    .locals 3

    .prologue
    .line 482
    const/4 v1, -0x1

    .line 483
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mClientResult:Lcom/android/calendar/timely/net/FindTimeClient$Result;

    iget-object v2, v2, Lcom/android/calendar/timely/net/FindTimeClient$Result;->suggestions:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 484
    iget-object v2, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mClientResult:Lcom/android/calendar/timely/net/FindTimeClient$Result;

    iget-object v2, v2, Lcom/android/calendar/timely/net/FindTimeClient$Result;->suggestions:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 489
    :goto_1
    return v0

    .line 483
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private getCalendarEventReferenceId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1011
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "event_reference_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSuggestionRows(Ljava/util/List;ILjava/util/List;)Lcom/android/calendar/timely/SuggestionRows;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/TimelineSuggestion;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/OmittedAttendee;",
            ">;)",
            "Lcom/android/calendar/timely/SuggestionRows;"
        }
    .end annotation

    .prologue
    .line 926
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->find_time_label_best_times:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 927
    new-instance v1, Lcom/android/calendar/timely/findatime/ui/SuggestionBuckets;

    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/calendar/timely/findatime/ui/SuggestionBuckets;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 928
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mTimezone:Ljava/util/TimeZone;

    invoke-virtual {v1, p1, p2, v0, p3}, Lcom/android/calendar/timely/findatime/ui/SuggestionBuckets;->getFlatList(Ljava/util/List;ILjava/util/TimeZone;Ljava/util/List;)Lcom/android/calendar/timely/SuggestionRows;

    move-result-object v0

    return-object v0
.end method

.method private isRecurringEvent()Z
    .locals 3

    .prologue
    .line 1015
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "is_recurring_event"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private logFiltersApplied(Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;)V
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 977
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 978
    invoke-static {v1}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v0

    sget v2, Lcom/android/calendar/R$string;->analytics_category_find_a_time:I

    .line 979
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$string;->analytics_action_ft_filter_timeframe_v2:I

    .line 980
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/android/calendar/R$string;->analytics_label_ft_filter_applied:I

    new-array v6, v9, [Ljava/lang/Object;

    .line 982
    invoke-virtual {p1}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->getTimeframeTag()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    .line 981
    invoke-virtual {v1, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 978
    invoke-interface/range {v0 .. v5}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 984
    invoke-static {v1}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v0

    sget v2, Lcom/android/calendar/R$string;->analytics_category_find_a_time:I

    .line 985
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$string;->analytics_action_ft_filter_duration_v2:I

    .line 986
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/android/calendar/R$string;->analytics_label_ft_filter_applied:I

    new-array v6, v9, [Ljava/lang/Object;

    iget v7, p1, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->durationInMinutes:I

    .line 988
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    .line 987
    invoke-virtual {v1, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 984
    invoke-interface/range {v0 .. v5}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 990
    return-void
.end method

.method private logFiltersBack()V
    .locals 6

    .prologue
    .line 1002
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1003
    invoke-static {v1}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v0

    sget v2, Lcom/android/calendar/R$string;->analytics_category_find_a_time:I

    .line 1004
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$string;->analytics_action_ft_filter_v2:I

    .line 1005
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/android/calendar/R$string;->analytics_label_ft_back:I

    .line 1006
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 1003
    invoke-interface/range {v0 .. v5}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 1008
    return-void
.end method

.method private logFiltersShown()V
    .locals 6

    .prologue
    .line 993
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 994
    invoke-static {v1}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v0

    sget v2, Lcom/android/calendar/R$string;->analytics_category_find_a_time:I

    .line 995
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$string;->analytics_action_ft_filter_v2:I

    .line 996
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/android/calendar/R$string;->analytics_label_ft_opened:I

    .line 997
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 994
    invoke-interface/range {v0 .. v5}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 999
    return-void
.end method

.method private logSuggestionSelected(ZII)V
    .locals 6

    .prologue
    .line 464
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 465
    invoke-static {v1}, Lcom/android/calendar/ExtensionsFactory;->getAnalyticsLogger(Landroid/content/Context;)Lcom/android/calendar/AnalyticsLogger;

    move-result-object v0

    .line 466
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 467
    sget v2, Lcom/android/calendar/R$integer;->analytics_event_suggestion_selected_dimension:I

    .line 468
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 470
    const-string v2, "custom"

    .line 467
    :goto_0
    invoke-interface {v0, v1, v4, v2}, Lcom/android/calendar/AnalyticsLogger;->setCustomDimension(Landroid/content/Context;ILjava/lang/String;)V

    .line 471
    sget v2, Lcom/android/calendar/R$integer;->analytics_event_suggestion_selected_is_best_dimension:I

    .line 472
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-eqz p1, :cond_1

    .line 473
    const-string v2, "best"

    .line 471
    :goto_1
    invoke-interface {v0, v1, v3, v2}, Lcom/android/calendar/AnalyticsLogger;->setCustomDimension(Landroid/content/Context;ILjava/lang/String;)V

    .line 474
    sget v2, Lcom/android/calendar/R$string;->analytics_category_find_a_time:I

    .line 475
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 476
    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/android/calendar/R$string;->analytics_label_ft_selected:I

    .line 477
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 474
    invoke-interface/range {v0 .. v5}, Lcom/android/calendar/AnalyticsLogger;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 479
    return-void

    .line 470
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 473
    :cond_1
    const-string v2, "no_best"

    goto :goto_1
.end method

.method public static newInstance(JJILjava/util/List;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/calendar/timely/FindTimeControllerFragment;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendar/timely/FindTimeAttendee;",
            ">;",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ)",
            "Lcom/android/calendar/timely/FindTimeControllerFragment;"
        }
    .end annotation

    .prologue
    .line 209
    new-instance v13, Lcom/android/calendar/timely/FindTimeControllerFragment;

    invoke-direct {v13}, Lcom/android/calendar/timely/FindTimeControllerFragment;-><init>()V

    .line 210
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 211
    const/4 v1, 0x0

    move-wide v2, p0

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    invoke-static/range {v0 .. v12}, Lcom/android/calendar/timely/FindTimeControllerFragment;->addArguments(Landroid/os/Bundle;IJJILjava/util/List;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 214
    invoke-virtual {v13, v0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 215
    return-object v13
.end method

.method private restoreState()V
    .locals 9

    .prologue
    const/16 v8, 0x9

    const/4 v6, 0x1

    .line 623
    iget v7, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mState:I

    .line 626
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mClientResult:Lcom/android/calendar/timely/net/FindTimeClient$Result;

    if-nez v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mSavedTimeframe:Lcom/android/calendar/timely/FindTimeTimeframe;

    if-eqz v0, :cond_3

    move v2, v6

    .line 628
    :goto_0
    if-eqz v2, :cond_4

    .line 629
    iget-boolean v4, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mSavedConsiderExistingRooms:Z

    .line 631
    :goto_1
    new-instance v0, Lcom/android/calendar/timely/net/FindTimeClient$Request;

    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mSuggestionUi:Lcom/android/calendar/event/FindTimeSuggestionUi;

    .line 632
    invoke-interface {v1}, Lcom/android/calendar/event/FindTimeSuggestionUi;->getDurationTimeframe()Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/calendar/timely/FindTimeControllerFragment;->getAttendees(Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;)Ljava/util/List;

    move-result-object v1

    if-eqz v2, :cond_5

    .line 634
    iget-object v2, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mSavedTimeframe:Lcom/android/calendar/timely/FindTimeTimeframe;

    .line 635
    :goto_2
    iget-object v3, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mTimezone:Ljava/util/TimeZone;

    .line 637
    invoke-direct {p0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->getCalendarEventReferenceId()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/timely/net/FindTimeClient$Request;-><init>(Ljava/util/List;Lcom/android/calendar/timely/FindTimeTimeframe;Ljava/util/TimeZone;ZLjava/lang/String;)V

    .line 638
    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mClient:Lcom/android/calendar/timely/net/FindTimeClient;

    invoke-interface {v1, v0}, Lcom/android/calendar/timely/net/FindTimeClient;->getLastResult(Lcom/android/calendar/timely/net/BaseRequest;)Lcom/android/calendar/timely/net/BaseResult;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/timely/net/FindTimeClient$Result;

    .line 639
    invoke-virtual {p0, v6}, Lcom/android/calendar/timely/FindTimeControllerFragment;->setState(I)V

    .line 640
    if-nez v1, :cond_6

    .line 641
    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mSuggestionUi:Lcom/android/calendar/event/FindTimeSuggestionUi;

    invoke-interface {v1}, Lcom/android/calendar/event/FindTimeSuggestionUi;->getDurationTimeframe()Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/timely/FindTimeControllerFragment;->transitionToLoading(Lcom/android/calendar/timely/net/FindTimeClient$Request;Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;)V

    .line 651
    :cond_0
    :goto_3
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mClientResult:Lcom/android/calendar/timely/net/FindTimeClient$Result;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mSuggestionIndex:I

    if-ltz v0, :cond_1

    const/4 v0, 0x6

    if-ne v7, v0, :cond_1

    .line 652
    iget v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mSuggestionIndex:I

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->transitionToGridShow(I)Z

    .line 654
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mClientResult:Lcom/android/calendar/timely/net/FindTimeClient$Result;

    if-eqz v0, :cond_2

    if-ne v7, v8, :cond_2

    .line 655
    invoke-virtual {p0, v8}, Lcom/android/calendar/timely/FindTimeControllerFragment;->setState(I)V

    .line 657
    :cond_2
    return-void

    .line 627
    :cond_3
    const/4 v0, 0x0

    move v2, v0

    goto :goto_0

    .line 630
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mSuggestionUi:Lcom/android/calendar/event/FindTimeSuggestionUi;

    invoke-interface {v0}, Lcom/android/calendar/event/FindTimeSuggestionUi;->getDurationTimeframe()Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    move-result-object v0

    iget-boolean v4, v0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->considerExistingRooms:Z

    goto :goto_1

    .line 635
    :cond_5
    iget-object v2, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mSuggestionUi:Lcom/android/calendar/event/FindTimeSuggestionUi;

    invoke-interface {v2}, Lcom/android/calendar/event/FindTimeSuggestionUi;->getDurationTimeframe()Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mTimezone:Ljava/util/TimeZone;

    invoke-virtual {v2, v3}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->getTimeframe(Ljava/util/TimeZone;)Lcom/android/calendar/timely/FindTimeTimeframe;

    move-result-object v2

    goto :goto_2

    .line 646
    :cond_6
    invoke-virtual {p0, v1}, Lcom/android/calendar/timely/FindTimeControllerFragment;->onRequestFinishedWithResult(Lcom/android/calendar/timely/net/FindTimeClient$Result;)V

    goto :goto_3
.end method

.method private setListResult(Lcom/android/calendar/timely/net/FindTimeClient$Result;)V
    .locals 6

    .prologue
    .line 748
    iget-object v0, p1, Lcom/android/calendar/timely/net/FindTimeClient$Result;->suggestions:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/calendar/timely/net/FindTimeClient$Result;->consideredAttendees:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 749
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mSuggestionUi:Lcom/android/calendar/event/FindTimeSuggestionUi;

    iget-object v1, p1, Lcom/android/calendar/timely/net/FindTimeClient$Result;->consideredAttendees:Lcom/google/common/collect/ImmutableList;

    iget-object v2, p1, Lcom/android/calendar/timely/net/FindTimeClient$Result;->omittedAttendees:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v0, v1, v2}, Lcom/android/calendar/event/FindTimeSuggestionUi;->setNoSuggestion(Ljava/util/List;Ljava/util/List;)V

    .line 766
    :goto_0
    return-void

    .line 752
    :cond_1
    iget-object v0, p1, Lcom/android/calendar/timely/net/FindTimeClient$Result;->suggestions:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/TimelineSuggestion;

    .line 753
    iget v2, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mEventColor:I

    iput v2, v0, Lcom/android/calendar/timely/TimelineSuggestion;->color:I

    goto :goto_1

    .line 755
    :cond_2
    iget-object v0, p1, Lcom/android/calendar/timely/net/FindTimeClient$Result;->suggestions:Lcom/google/common/collect/ImmutableList;

    iget v1, p1, Lcom/android/calendar/timely/net/FindTimeClient$Result;->acceptableSuggestions:I

    iget-object v2, p1, Lcom/android/calendar/timely/net/FindTimeClient$Result;->omittedAttendees:Lcom/google/common/collect/ImmutableList;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/calendar/timely/FindTimeControllerFragment;->getSuggestionRows(Ljava/util/List;ILjava/util/List;)Lcom/android/calendar/timely/SuggestionRows;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mSuggestionRows:Lcom/android/calendar/timely/SuggestionRows;

    .line 757
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mSuggestionUi:Lcom/android/calendar/event/FindTimeSuggestionUi;

    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mSuggestionRows:Lcom/android/calendar/timely/SuggestionRows;

    iget-object v2, p1, Lcom/android/calendar/timely/net/FindTimeClient$Result;->consideredAttendees:Lcom/google/common/collect/ImmutableList;

    iget-object v3, p1, Lcom/android/calendar/timely/net/FindTimeClient$Result;->omittedAttendees:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/calendar/event/FindTimeSuggestionUi;->setSuggestions(Lcom/android/calendar/timely/SuggestionRows;Ljava/util/List;Ljava/util/List;)V

    .line 761
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 760
    invoke-static {v0}, Lcom/android/calendar/ExtensionsFactory;->getCalendarClientLogger(Landroid/content/Context;)Lcom/android/calendar/CalendarClientLogger;

    move-result-object v0

    .line 763
    invoke-direct {p0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->getCalendarEventReferenceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/calendar/timely/net/FindTimeClient$Result;->responseId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mSuggestionRows:Lcom/android/calendar/timely/SuggestionRows;

    iget v3, v3, Lcom/android/calendar/timely/SuggestionRows;->bestTimesCount:I

    .line 764
    invoke-direct {p0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->isRecurringEvent()Z

    move-result v4

    iget-object v5, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mAccount:Landroid/accounts/Account;

    .line 762
    invoke-virtual/range {v0 .. v5}, Lcom/android/calendar/CalendarClientLogger;->logFindTimeSuggestionViewShown(Ljava/lang/String;Ljava/lang/String;IZLandroid/accounts/Account;)V

    goto :goto_0
.end method

.method private setSuggestionListVisibility()V
    .locals 2

    .prologue
    .line 834
    iget v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 848
    :goto_0
    :pswitch_0
    return-void

    .line 837
    :pswitch_1
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mSuggestionUi:Lcom/android/calendar/event/FindTimeSuggestionUi;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/android/calendar/event/FindTimeSuggestionUi;->setVisibility(I)V

    goto :goto_0

    .line 843
    :pswitch_2
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mSuggestionUi:Lcom/android/calendar/event/FindTimeSuggestionUi;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/calendar/event/FindTimeSuggestionUi;->setVisibility(I)V

    goto :goto_0

    .line 834
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private terminateWithCancel()V
    .locals 1

    .prologue
    .line 891
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->setState(I)V

    .line 892
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mClient:Lcom/android/calendar/timely/net/FindTimeClient;

    invoke-interface {v0}, Lcom/android/calendar/timely/net/FindTimeClient;->cancelRequest()V

    .line 893
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mOnFinishListener:Lcom/android/calendar/timely/FindTimeControllerFragment$OnFinishListener;

    if-eqz v0, :cond_0

    .line 894
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mOnFinishListener:Lcom/android/calendar/timely/FindTimeControllerFragment$OnFinishListener;

    invoke-interface {v0}, Lcom/android/calendar/timely/FindTimeControllerFragment$OnFinishListener;->onFinishedWithCancel()V

    .line 896
    :cond_0
    return-void
.end method

.method private transitionBackFromDurationTimeframeFilter(Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;)V
    .locals 5

    .prologue
    .line 851
    iget v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mState:I

    .line 852
    packed-switch v0, :pswitch_data_0

    .line 862
    sget-object v1, Lcom/android/calendar/timely/FindTimeControllerFragment;->TAG:Ljava/lang/String;

    const-string v2, "Should not transition back from %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 864
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->setSuggestionListVisibility()V

    .line 865
    return-void

    .line 854
    :pswitch_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->setState(I)V

    .line 855
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 856
    if-eqz p1, :cond_0

    .line 859
    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/FindTimeControllerFragment;->onQuery(Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;)V

    goto :goto_0

    .line 852
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method private transitionToDurationTimeframeFilter(Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;)V
    .locals 5

    .prologue
    .line 672
    iget v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mState:I

    .line 673
    packed-switch v0, :pswitch_data_0

    .line 692
    sget-object v1, Lcom/android/calendar/timely/FindTimeControllerFragment;->TAG:Ljava/lang/String;

    const-string v2, "Should not transition to filters state from %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 694
    :goto_0
    invoke-direct {p0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->setSuggestionListVisibility()V

    .line 695
    return-void

    .line 678
    :pswitch_0
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->setState(I)V

    .line 679
    iget v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mEventColor:I

    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mTimezone:Ljava/util/TimeZone;

    .line 680
    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    .line 679
    invoke-static {v0, p1, v1}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->newInstance(ILcom/android/calendar/timely/findatime/ui/DurationTimeframe;Ljava/lang/String;)Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;

    move-result-object v0

    .line 681
    const/4 v1, -0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframeFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 682
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$id;->fragment_container:I

    const-string v3, "find_time_filters_fragment"

    .line 683
    invoke-virtual {v1, v2, v0, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "find_time_filters"

    .line 684
    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 685
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 686
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 687
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x20

    .line 688
    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 689
    invoke-direct {p0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->logFiltersShown()V

    goto :goto_0

    .line 673
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private transitionToGridShow(I)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 792
    iput p1, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mSuggestionIndex:I

    .line 793
    iget v2, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mState:I

    .line 794
    sparse-switch v2, :sswitch_data_0

    .line 806
    sget-object v3, Lcom/android/calendar/timely/FindTimeControllerFragment;->TAG:Ljava/lang/String;

    const-string v4, "Should not transition to show grid state from %d"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v3, v4, v0}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v0, v1

    .line 807
    :goto_0
    return v0

    .line 797
    :sswitch_0
    new-instance v1, Lcom/android/calendar/timely/FindTimeGridData;

    invoke-direct {v1}, Lcom/android/calendar/timely/FindTimeGridData;-><init>()V

    .line 798
    iget-object v2, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mSuggestionRows:Lcom/android/calendar/timely/SuggestionRows;

    invoke-virtual {v2}, Lcom/android/calendar/timely/SuggestionRows;->getTimelineSuggestionList()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/timely/FindTimeGridData;->setSuggestions(Lcom/google/common/collect/ImmutableList;)Lcom/android/calendar/timely/FindTimeGridData;

    .line 799
    iget v2, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mSuggestionIndex:I

    invoke-virtual {v1, v2}, Lcom/android/calendar/timely/FindTimeGridData;->setSuggestionIndex(I)Lcom/android/calendar/timely/FindTimeGridData;

    .line 800
    iget-object v2, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mSuggestionRows:Lcom/android/calendar/timely/SuggestionRows;

    iget v2, v2, Lcom/android/calendar/timely/SuggestionRows;->bestTimesCount:I

    invoke-virtual {p0, v1, v2}, Lcom/android/calendar/timely/FindTimeControllerFragment;->findOrCreateFindTimeGridFragment(Lcom/android/calendar/timely/FindTimeGridData;I)Lcom/android/calendar/timely/FindTimeGridUi;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mGridUi:Lcom/android/calendar/timely/FindTimeGridUi;

    .line 802
    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mGridUi:Lcom/android/calendar/timely/FindTimeGridUi;

    invoke-interface {v1, p0}, Lcom/android/calendar/timely/FindTimeGridUi;->setListener(Lcom/android/calendar/timely/FindTimeGridUi$Listener;)V

    .line 803
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/calendar/timely/FindTimeControllerFragment;->setState(I)V

    goto :goto_0

    .line 794
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method private transitionToListException(Lcom/android/calendar/timely/FindTimeSuggestionException;)V
    .locals 5

    .prologue
    .line 812
    iget v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mState:I

    .line 813
    packed-switch v0, :pswitch_data_0

    .line 824
    sget-object v1, Lcom/android/calendar/timely/FindTimeControllerFragment;->TAG:Ljava/lang/String;

    const-string v2, "Should not transition to no connection state from %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 825
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    .line 824
    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 827
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->setSuggestionListVisibility()V

    .line 828
    return-void

    .line 815
    :pswitch_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->setState(I)V

    .line 816
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mSuggestionUi:Lcom/android/calendar/event/FindTimeSuggestionUi;

    invoke-interface {v0, p1}, Lcom/android/calendar/event/FindTimeSuggestionUi;->setException(Lcom/android/calendar/timely/FindTimeSuggestionException;)V

    .line 817
    invoke-virtual {p1}, Lcom/android/calendar/timely/FindTimeSuggestionException;->isUserRecoverableAuthException()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 819
    invoke-virtual {p1}, Lcom/android/calendar/timely/FindTimeSuggestionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/UserRecoverableAuthException;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/UserRecoverableAuthException;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x3e9

    .line 818
    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/timely/FindTimeControllerFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 813
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private transitionToLoading(Lcom/android/calendar/timely/net/FindTimeClient$Request;Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 729
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mClientResult:Lcom/android/calendar/timely/net/FindTimeClient$Result;

    .line 730
    iget-object v0, p1, Lcom/android/calendar/timely/net/FindTimeClient$Request;->timeframe:Lcom/android/calendar/timely/FindTimeTimeframe;

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mSavedTimeframe:Lcom/android/calendar/timely/FindTimeTimeframe;

    .line 731
    iget-boolean v0, p1, Lcom/android/calendar/timely/net/FindTimeClient$Request;->considerExistingRooms:Z

    iput-boolean v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mSavedConsiderExistingRooms:Z

    .line 732
    iget v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mState:I

    .line 733
    packed-switch v0, :pswitch_data_0

    .line 743
    sget-object v1, Lcom/android/calendar/timely/FindTimeControllerFragment;->TAG:Ljava/lang/String;

    const-string v2, "Should not transition to loading state from %d"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 745
    :goto_0
    return-void

    .line 738
    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/android/calendar/timely/FindTimeControllerFragment;->setState(I)V

    .line 739
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mSuggestionUi:Lcom/android/calendar/event/FindTimeSuggestionUi;

    invoke-interface {v0, p2}, Lcom/android/calendar/event/FindTimeSuggestionUi;->setLoading(Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;)V

    .line 740
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mClient:Lcom/android/calendar/timely/net/FindTimeClient;

    invoke-interface {v0, p1}, Lcom/android/calendar/timely/net/FindTimeClient;->sendRequest(Lcom/android/calendar/timely/net/BaseRequest;)V

    goto :goto_0

    .line 733
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected findOrCreateFindTimeClientFragment(Landroid/accounts/Account;Z)Lcom/android/calendar/timely/net/FindTimeClient;
    .locals 4

    .prologue
    .line 352
    .line 353
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "find_time_client_fragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/net/FindTimeClientFragment;

    .line 354
    if-eqz v0, :cond_0

    .line 372
    :goto_0
    return-object v0

    .line 358
    :cond_0
    const-string v0, "com.google"

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 360
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 359
    invoke-static {v0, v1, p2}, Lcom/android/calendar/timely/net/rendezvous/FindTimeRendezvousClient;->newInstance(Landroid/content/Context;Ljava/lang/String;Z)Lcom/android/calendar/timely/net/rendezvous/FindTimeRendezvousClient;

    move-result-object v0

    .line 368
    :goto_1
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 369
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$id;->fragment_container:I

    const-string v3, "find_time_client_fragment"

    .line 370
    invoke-virtual {v1, v2, v0, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 371
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 361
    :cond_1
    const-string v0, "com.google.android.gm.exchange"

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 362
    new-instance v0, Lcom/android/calendar/timely/net/exchange/FindTimeExchangeClient;

    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/timely/net/exchange/FindTimeExchangeClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 365
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1b

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Account type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected findOrCreateFindTimeGridFragment(Lcom/android/calendar/timely/FindTimeGridData;I)Lcom/android/calendar/timely/FindTimeGridUi;
    .locals 4

    .prologue
    .line 418
    .line 419
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "find_time_grid_fragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/FindTimeGridFragment;

    .line 420
    if-eqz v0, :cond_0

    .line 421
    invoke-virtual {v0, p1, p2}, Lcom/android/calendar/timely/FindTimeGridFragment;->updateGridData(Lcom/android/calendar/timely/FindTimeGridData;I)V

    .line 422
    invoke-virtual {v0}, Lcom/android/calendar/timely/FindTimeGridFragment;->updateGridView()V

    .line 433
    :goto_0
    return-object v0

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mTimezone:Ljava/util/TimeZone;

    .line 426
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 425
    invoke-static {p1, v0, v1, v2, p2}, Lcom/android/calendar/timely/FindTimeGridFragment;->newInstance(Lcom/android/calendar/timely/FindTimeGridData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/calendar/timely/FindTimeGridFragment;

    move-result-object v0

    .line 427
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 428
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->findSuggestionFragment()Landroid/app/Fragment;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$id;->fragment_container:I

    const-string v3, "find_time_grid_fragment"

    .line 429
    invoke-virtual {v1, v2, v0, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "find_time_grid"

    .line 430
    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 431
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 432
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    goto :goto_0
.end method

.method protected findOrCreateFindTimeSuggestionFragment(IJJLjava/lang/String;)Lcom/android/calendar/event/FindTimeSuggestionUi;
    .locals 12

    .prologue
    .line 387
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->findSuggestionFragment()Landroid/app/Fragment;

    move-result-object v2

    .line 388
    if-eqz v2, :cond_0

    .line 389
    check-cast v2, Lcom/android/calendar/event/FindTimeSuggestionUi;

    .line 412
    :goto_0
    return-object v2

    .line 391
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$array;->find_time_2_timeframe_labels:I

    invoke-static {v2, v3}, Lcom/android/calendar/event/segment/ReminderSegment;->loadStringArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;

    move-result-object v7

    .line 395
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$array;->find_a_time_duration_timeframe_filter_timeframe_values:I

    .line 394
    invoke-static {v2, v3}, Lcom/android/calendar/event/segment/ReminderSegment;->loadStringArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;

    move-result-object v8

    .line 397
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$array;->find_time_duration_values:I

    invoke-static {v2, v3}, Lcom/android/calendar/event/segment/ReminderSegment;->loadIntegerArray(Landroid/content/res/Resources;I)Ljava/util/ArrayList;

    move-result-object v10

    .line 401
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 400
    invoke-static {v2, v10}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->convertDurationValueToLabel(Landroid/content/res/Resources;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v9

    .line 402
    iget-object v6, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mTimezone:Ljava/util/TimeZone;

    iget-object v2, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mAttendees:Ljava/util/ArrayList;

    .line 405
    invoke-static {v2}, Lcom/android/calendar/timely/FindTimeUtil;->containsRooms(Ljava/util/List;)Z

    move-result v11

    move-wide v2, p2

    move-wide/from16 v4, p4

    .line 402
    invoke-static/range {v2 .. v11}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->getDefault(JJLjava/util/TimeZone;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    move-result-object v2

    .line 406
    iget v3, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mEventColor:I

    iget-object v4, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mAccount:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v0, p6

    invoke-static {p1, v3, v2, v0, v4}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->newInstance(IILcom/android/calendar/timely/findatime/ui/DurationTimeframe;Ljava/lang/String;Ljava/lang/String;)Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;

    move-result-object v2

    .line 408
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    .line 409
    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    sget v4, Lcom/android/calendar/R$id;->fragment_container:I

    const-string v5, "find_time_suggestion_fragment"

    .line 410
    invoke-virtual {v3, v4, v2, v5}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 411
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 412
    check-cast v2, Lcom/android/calendar/event/FindTimeSuggestionUi;

    goto :goto_0
.end method

.method protected findSuggestionFragment()Landroid/app/Fragment;
    .locals 2

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "find_time_suggestion_fragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getLoadingString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 973
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mSuggestionUi:Lcom/android/calendar/event/FindTimeSuggestionUi;

    invoke-interface {v0}, Lcom/android/calendar/event/FindTimeSuggestionUi;->getLoadingString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getState()I
    .locals 1

    .prologue
    .line 702
    iget v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mState:I

    return v0
.end method

.method protected getType()I
    .locals 1

    .prologue
    .line 913
    iget v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mType:I

    return v0
.end method

.method public goBack()V
    .locals 0

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->transitionBack()V

    .line 438
    return-void
.end method

.method public isInLoadingState()Z
    .locals 1

    .prologue
    .line 961
    iget v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mState:I

    invoke-static {v0}, Lcom/android/calendar/timely/FindTimeControllerState;->isLoadingState(I)Z

    move-result v0

    return v0
.end method

.method public isInSuggestionFilterState()Z
    .locals 1

    .prologue
    .line 957
    iget v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mState:I

    invoke-static {v0}, Lcom/android/calendar/timely/FindTimeControllerState;->isSuggestionFilterState(I)Z

    move-result v0

    return v0
.end method

.method public isInSuggestionGridState()Z
    .locals 1

    .prologue
    .line 965
    iget v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mState:I

    invoke-static {v0}, Lcom/android/calendar/timely/FindTimeControllerState;->isSuggestionGridState(I)Z

    move-result v0

    return v0
.end method

.method public isInSuggestionListState()Z
    .locals 1

    .prologue
    .line 969
    iget v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mState:I

    invoke-static {v0}, Lcom/android/calendar/timely/FindTimeControllerState;->isSuggestionListState(I)Z

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 332
    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_1

    .line 333
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mSuggestionUi:Lcom/android/calendar/event/FindTimeSuggestionUi;

    invoke-interface {v0}, Lcom/android/calendar/event/FindTimeSuggestionUi;->getDurationTimeframe()Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->onQuery(Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 222
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 227
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/android/calendar/timely/FindTimeControllerFragment$OnFinishListener;

    move-object v1, v0

    iput-object v1, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mOnFinishListener:Lcom/android/calendar/timely/FindTimeControllerFragment$OnFinishListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    return-void

    .line 228
    :catch_0
    move-exception v1

    .line 229
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, " must implement OnFinishListener"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onCancelled()V
    .locals 0

    .prologue
    .line 548
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->transitionBack()V

    .line 549
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 242
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 243
    if-eqz p1, :cond_1

    .line 244
    const-string v0, "state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mState:I

    .line 245
    const-string v0, "timeframe"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/FindTimeTimeframe;

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mSavedTimeframe:Lcom/android/calendar/timely/FindTimeTimeframe;

    .line 246
    const-string v0, "consider_existing_rooms"

    .line 247
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mSavedConsiderExistingRooms:Z

    .line 248
    const-string v0, "suggestion_index"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mSuggestionIndex:I

    .line 257
    :goto_1
    iput-boolean v1, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mNeedsRestoreState:Z

    .line 258
    iput-object v4, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mClientResult:Lcom/android/calendar/timely/net/FindTimeClient$Result;

    .line 260
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 261
    const-string v0, "account"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mAccount:Landroid/accounts/Account;

    .line 262
    const-string v0, "is_test_environment"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 263
    iget-object v3, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mAccount:Landroid/accounts/Account;

    invoke-virtual {p0, v3, v0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->findOrCreateFindTimeClientFragment(Landroid/accounts/Account;Z)Lcom/android/calendar/timely/net/FindTimeClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mClient:Lcom/android/calendar/timely/net/FindTimeClient;

    .line 265
    const-string v0, "event_color"

    .line 266
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    sget v4, Lcom/android/calendar/R$color;->default_find_time_event_color:I

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    .line 265
    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mEventColor:I

    .line 267
    const-string v0, "attendees"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mAttendees:Ljava/util/ArrayList;

    .line 270
    const-string v0, "type"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mType:I

    .line 271
    const-string v0, "startMillis"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 272
    const-string v0, "endMillis"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 273
    const-string v0, "timezone"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 274
    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mTimezone:Ljava/util/TimeZone;

    .line 275
    iget v1, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mType:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/timely/FindTimeControllerFragment;->findOrCreateFindTimeSuggestionFragment(IJJLjava/lang/String;)Lcom/android/calendar/event/FindTimeSuggestionUi;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mSuggestionUi:Lcom/android/calendar/event/FindTimeSuggestionUi;

    .line 278
    return-void

    :cond_0
    move v0, v2

    .line 247
    goto :goto_0

    .line 252
    :cond_1
    iput v2, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mState:I

    .line 253
    iput-object v4, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mSavedTimeframe:Lcom/android/calendar/timely/FindTimeTimeframe;

    .line 254
    iput-boolean v2, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mSavedConsiderExistingRooms:Z

    .line 255
    iput v3, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mSuggestionIndex:I

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 292
    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mClient:Lcom/android/calendar/timely/net/FindTimeClient;

    .line 293
    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mSuggestionUi:Lcom/android/calendar/event/FindTimeSuggestionUi;

    .line 294
    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mGridUi:Lcom/android/calendar/timely/FindTimeGridUi;

    .line 295
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 296
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mOnFinishListener:Lcom/android/calendar/timely/FindTimeControllerFragment$OnFinishListener;

    .line 237
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 238
    return-void
.end method

.method public onFilterApply(Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;)V
    .locals 4

    .prologue
    .line 944
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mClientResult:Lcom/android/calendar/timely/net/FindTimeClient$Result;

    if-eqz v0, :cond_0

    .line 946
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 945
    invoke-static {v0}, Lcom/android/calendar/ExtensionsFactory;->getCalendarClientLogger(Landroid/content/Context;)Lcom/android/calendar/CalendarClientLogger;

    move-result-object v0

    .line 947
    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mSuggestionUi:Lcom/android/calendar/event/FindTimeSuggestionUi;

    invoke-interface {v1}, Lcom/android/calendar/event/FindTimeSuggestionUi;->getDurationTimeframe()Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/calendar/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 949
    invoke-direct {p0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->getCalendarEventReferenceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mClientResult:Lcom/android/calendar/timely/net/FindTimeClient$Result;

    iget-object v2, v2, Lcom/android/calendar/timely/net/FindTimeClient$Result;->responseId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mAccount:Landroid/accounts/Account;

    .line 948
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/calendar/CalendarClientLogger;->logFindTimeFiltersChanged(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)V

    .line 952
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/FindTimeControllerFragment;->transitionBackFromDurationTimeframeFilter(Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;)V

    .line 953
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/FindTimeControllerFragment;->logFiltersApplied(Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;)V

    .line 954
    return-void
.end method

.method public onFilterBack()V
    .locals 1

    .prologue
    .line 938
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->transitionBackFromDurationTimeframeFilter(Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;)V

    .line 939
    invoke-direct {p0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->logFiltersBack()V

    .line 940
    return-void
.end method

.method public onFiltersOpen(Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;)V
    .locals 1

    .prologue
    .line 933
    new-instance v0, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;

    invoke-direct {v0, p1}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;-><init>(Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;)V

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->transitionToDurationTimeframeFilter(Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;)V

    .line 934
    return-void
.end method

.method public onGridCancelled()V
    .locals 0

    .prologue
    .line 578
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->transitionBack()V

    .line 579
    return-void
.end method

.method public onGridTimeSlotSelected(Lcom/android/calendar/timely/TimelineSuggestion;ZZ)V
    .locals 7

    .prologue
    .line 558
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/FindTimeControllerFragment;->getBackendSuggestionPosition(Lcom/android/calendar/timely/TimelineSuggestion;)I

    move-result v0

    .line 559
    sget v1, Lcom/android/calendar/R$string;->analytics_action_ft_grid_view:I

    invoke-direct {p0, p2, v0, v1}, Lcom/android/calendar/timely/FindTimeControllerFragment;->logSuggestionSelected(ZII)V

    .line 561
    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelineSuggestion;->getStartMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelineSuggestion;->getEndMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/calendar/timely/FindTimeControllerFragment;->terminateWithSlot(JJLjava/lang/String;)V

    .line 562
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mClientResult:Lcom/android/calendar/timely/net/FindTimeClient$Result;

    if-eqz v0, :cond_0

    .line 564
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 563
    invoke-static {v0}, Lcom/android/calendar/ExtensionsFactory;->getCalendarClientLogger(Landroid/content/Context;)Lcom/android/calendar/CalendarClientLogger;

    move-result-object v0

    .line 565
    if-eqz p3, :cond_1

    .line 567
    invoke-direct {p0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->getCalendarEventReferenceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mClientResult:Lcom/android/calendar/timely/net/FindTimeClient$Result;

    iget-object v2, v2, Lcom/android/calendar/timely/net/FindTimeClient$Result;->responseId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mAccount:Landroid/accounts/Account;

    .line 566
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/calendar/CalendarClientLogger;->logFindTimeGridViewCustomTimeAccepted(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)V

    .line 574
    :cond_0
    :goto_0
    return-void

    .line 570
    :cond_1
    invoke-direct {p0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->getCalendarEventReferenceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mClientResult:Lcom/android/calendar/timely/net/FindTimeClient$Result;

    iget-object v2, v2, Lcom/android/calendar/timely/net/FindTimeClient$Result;->responseId:Ljava/lang/String;

    .line 571
    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelineSuggestion;->getSuggestionId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mAccount:Landroid/accounts/Account;

    .line 569
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/calendar/CalendarClientLogger;->logFindTimeGridViewSuggestionAccepted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)V

    goto :goto_0
.end method

.method public onQuery(Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;)V
    .locals 6

    .prologue
    .line 526
    new-instance v0, Lcom/android/calendar/timely/net/FindTimeClient$Request;

    .line 527
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/FindTimeControllerFragment;->getAttendees(Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mTimezone:Ljava/util/TimeZone;

    .line 528
    invoke-virtual {p1, v2}, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->getTimeframe(Ljava/util/TimeZone;)Lcom/android/calendar/timely/FindTimeTimeframe;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mTimezone:Ljava/util/TimeZone;

    iget-boolean v4, p1, Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;->considerExistingRooms:Z

    .line 531
    invoke-direct {p0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->getCalendarEventReferenceId()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/timely/net/FindTimeClient$Request;-><init>(Ljava/util/List;Lcom/android/calendar/timely/FindTimeTimeframe;Ljava/util/TimeZone;ZLjava/lang/String;)V

    .line 532
    invoke-direct {p0, v0, p1}, Lcom/android/calendar/timely/FindTimeControllerFragment;->transitionToLoading(Lcom/android/calendar/timely/net/FindTimeClient$Request;Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;)V

    .line 533
    return-void
.end method

.method public onRequestFinishedWithResult(Lcom/android/calendar/timely/net/FindTimeClient$Result;)V
    .locals 1

    .prologue
    .line 444
    invoke-virtual {p1}, Lcom/android/calendar/timely/net/FindTimeClient$Result;->hasError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p1, Lcom/android/calendar/timely/net/FindTimeClient$Result;->exception:Lcom/android/calendar/timely/FindTimeSuggestionException;

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->transitionToListException(Lcom/android/calendar/timely/FindTimeSuggestionException;)V

    .line 449
    :goto_0
    return-void

    .line 447
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/FindTimeControllerFragment;->transitionToListShowData(Lcom/android/calendar/timely/net/FindTimeClient$Result;)V

    goto :goto_0
.end method

.method public bridge synthetic onRequestFinishedWithResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 61
    check-cast p1, Lcom/android/calendar/timely/net/FindTimeClient$Result;

    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/FindTimeControllerFragment;->onRequestFinishedWithResult(Lcom/android/calendar/timely/net/FindTimeClient$Result;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 282
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 283
    const-string v0, "state"

    iget v1, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 284
    const-string v0, "timeframe"

    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mSavedTimeframe:Lcom/android/calendar/timely/FindTimeTimeframe;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 285
    const-string v1, "consider_existing_rooms"

    iget-boolean v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mSavedConsiderExistingRooms:Z

    if-eqz v0, :cond_0

    .line 286
    const/4 v0, 0x1

    .line 285
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 287
    const-string v0, "suggestion_index"

    iget v1, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mSuggestionIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 288
    return-void

    .line 286
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onShowMore()V
    .locals 4

    .prologue
    .line 537
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mSuggestionUi:Lcom/android/calendar/event/FindTimeSuggestionUi;

    invoke-interface {v0}, Lcom/android/calendar/event/FindTimeSuggestionUi;->showMore()V

    .line 538
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mClientResult:Lcom/android/calendar/timely/net/FindTimeClient$Result;

    if-eqz v0, :cond_0

    .line 540
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 539
    invoke-static {v0}, Lcom/android/calendar/ExtensionsFactory;->getCalendarClientLogger(Landroid/content/Context;)Lcom/android/calendar/CalendarClientLogger;

    move-result-object v0

    .line 542
    invoke-direct {p0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->getCalendarEventReferenceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mClientResult:Lcom/android/calendar/timely/net/FindTimeClient$Result;

    iget-object v2, v2, Lcom/android/calendar/timely/net/FindTimeClient$Result;->responseId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mAccount:Landroid/accounts/Account;

    .line 541
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/calendar/CalendarClientLogger;->logFindTimeShowMoreClicked(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)V

    .line 544
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 300
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 301
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mSuggestionUi:Lcom/android/calendar/event/FindTimeSuggestionUi;

    invoke-interface {v0, p0}, Lcom/android/calendar/event/FindTimeSuggestionUi;->setListener(Lcom/android/calendar/event/FindTimeSuggestionUi$Listener;)V

    .line 302
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mClient:Lcom/android/calendar/timely/net/FindTimeClient;

    invoke-interface {v0, p0}, Lcom/android/calendar/timely/net/FindTimeClient;->registerListener(Lcom/android/calendar/timely/net/BaseClient$OnRequestFinishedListener;)V

    .line 303
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mGridUi:Lcom/android/calendar/timely/FindTimeGridUi;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mGridUi:Lcom/android/calendar/timely/FindTimeGridUi;

    invoke-interface {v0, p0}, Lcom/android/calendar/timely/FindTimeGridUi;->setListener(Lcom/android/calendar/timely/FindTimeGridUi$Listener;)V

    .line 306
    :cond_0
    iget-boolean v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mNeedsRestoreState:Z

    if-eqz v0, :cond_1

    .line 310
    invoke-direct {p0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->restoreState()V

    .line 311
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mNeedsRestoreState:Z

    .line 313
    :cond_1
    invoke-direct {p0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->setSuggestionListVisibility()V

    .line 314
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 318
    iget v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mState:I

    if-ne v0, v1, :cond_0

    .line 320
    iput-boolean v1, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mNeedsRestoreState:Z

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mClient:Lcom/android/calendar/timely/net/FindTimeClient;

    invoke-interface {v0}, Lcom/android/calendar/timely/net/FindTimeClient;->unregisterListener()V

    .line 323
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mSuggestionUi:Lcom/android/calendar/event/FindTimeSuggestionUi;

    invoke-interface {v0, v2}, Lcom/android/calendar/event/FindTimeSuggestionUi;->setListener(Lcom/android/calendar/event/FindTimeSuggestionUi$Listener;)V

    .line 324
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mGridUi:Lcom/android/calendar/timely/FindTimeGridUi;

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mGridUi:Lcom/android/calendar/timely/FindTimeGridUi;

    invoke-interface {v0, v2}, Lcom/android/calendar/timely/FindTimeGridUi;->setListener(Lcom/android/calendar/timely/FindTimeGridUi$Listener;)V

    .line 327
    :cond_1
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 328
    return-void
.end method

.method public onTimeSlotMoreSelected(Lcom/android/calendar/timely/TimelineSuggestion;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 509
    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mSuggestionRows:Lcom/android/calendar/timely/SuggestionRows;

    invoke-virtual {v1}, Lcom/android/calendar/timely/SuggestionRows;->getTimelineSuggestionList()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/common/collect/ImmutableList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 510
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 511
    sget-object v1, Lcom/android/calendar/timely/FindTimeControllerFragment;->TAG:Ljava/lang/String;

    const-string v2, "Could not find position of suggestion, this is totally unexpected!"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 514
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->transitionToGridShow(I)Z

    move-result v0

    .line 515
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mClientResult:Lcom/android/calendar/timely/net/FindTimeClient$Result;

    if-eqz v0, :cond_0

    .line 517
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 516
    invoke-static {v0}, Lcom/android/calendar/ExtensionsFactory;->getCalendarClientLogger(Landroid/content/Context;)Lcom/android/calendar/CalendarClientLogger;

    move-result-object v0

    .line 519
    invoke-direct {p0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->getCalendarEventReferenceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mClientResult:Lcom/android/calendar/timely/net/FindTimeClient$Result;

    iget-object v2, v2, Lcom/android/calendar/timely/net/FindTimeClient$Result;->responseId:Ljava/lang/String;

    .line 520
    invoke-virtual {p1}, Lcom/android/calendar/timely/TimelineSuggestion;->getSuggestionId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mAccount:Landroid/accounts/Account;

    .line 518
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/calendar/CalendarClientLogger;->logFindTimeGridViewOpened(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)V

    .line 522
    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onTimeSlotSelected(Lcom/android/calendar/timely/SuggestionRow;)V
    .locals 7

    .prologue
    .line 494
    iget-object v0, p1, Lcom/android/calendar/timely/SuggestionRow;->suggestion:Lcom/android/calendar/timely/TimelineSuggestion;

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->getBackendSuggestionPosition(Lcom/android/calendar/timely/TimelineSuggestion;)I

    move-result v0

    .line 495
    iget-boolean v1, p1, Lcom/android/calendar/timely/SuggestionRow;->isBestTime:Z

    sget v2, Lcom/android/calendar/R$string;->analytics_action_ft_suggestion_view:I

    invoke-direct {p0, v1, v0, v2}, Lcom/android/calendar/timely/FindTimeControllerFragment;->logSuggestionSelected(ZII)V

    .line 497
    iget-object v0, p1, Lcom/android/calendar/timely/SuggestionRow;->suggestion:Lcom/android/calendar/timely/TimelineSuggestion;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelineSuggestion;->getStartMillis()J

    move-result-wide v2

    iget-object v0, p1, Lcom/android/calendar/timely/SuggestionRow;->suggestion:Lcom/android/calendar/timely/TimelineSuggestion;

    invoke-virtual {v0}, Lcom/android/calendar/timely/TimelineSuggestion;->getEndMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/calendar/timely/FindTimeControllerFragment;->terminateWithSlot(JJLjava/lang/String;)V

    .line 498
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mClientResult:Lcom/android/calendar/timely/net/FindTimeClient$Result;

    if-eqz v0, :cond_0

    .line 500
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 499
    invoke-static {v0}, Lcom/android/calendar/ExtensionsFactory;->getCalendarClientLogger(Landroid/content/Context;)Lcom/android/calendar/CalendarClientLogger;

    move-result-object v0

    .line 502
    invoke-direct {p0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->getCalendarEventReferenceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mClientResult:Lcom/android/calendar/timely/net/FindTimeClient$Result;

    iget-object v2, v2, Lcom/android/calendar/timely/net/FindTimeClient$Result;->responseId:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/calendar/timely/SuggestionRow;->suggestion:Lcom/android/calendar/timely/TimelineSuggestion;

    .line 503
    invoke-virtual {v3}, Lcom/android/calendar/timely/TimelineSuggestion;->getSuggestionId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mAccount:Landroid/accounts/Account;

    .line 501
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/calendar/CalendarClientLogger;->logFindTimeSuggestionViewSuggestionAccepted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)V

    .line 505
    :cond_0
    return-void
.end method

.method protected setState(I)V
    .locals 1

    .prologue
    .line 712
    iput p1, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mState:I

    .line 715
    iget v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 725
    :goto_0
    :pswitch_0
    return-void

    .line 719
    :pswitch_1
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mSuggestionUi:Lcom/android/calendar/event/FindTimeSuggestionUi;

    invoke-interface {v0}, Lcom/android/calendar/event/FindTimeSuggestionUi;->customizeSystemDecorations()V

    goto :goto_0

    .line 722
    :pswitch_2
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mGridUi:Lcom/android/calendar/timely/FindTimeGridUi;

    invoke-interface {v0}, Lcom/android/calendar/timely/FindTimeGridUi;->customizeSystemDecorations()V

    goto :goto_0

    .line 715
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected terminateWithSlot(JJLjava/lang/String;)V
    .locals 9

    .prologue
    .line 900
    iget v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mState:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 902
    sget-object v0, Lcom/android/calendar/timely/FindTimeControllerFragment;->TAG:Ljava/lang/String;

    const-string v1, "Cannot select any suggestions at state: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mState:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 909
    :cond_0
    :goto_0
    return-void

    .line 905
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->setState(I)V

    .line 906
    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mOnFinishListener:Lcom/android/calendar/timely/FindTimeControllerFragment$OnFinishListener;

    if-eqz v0, :cond_0

    .line 907
    iget-object v1, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mOnFinishListener:Lcom/android/calendar/timely/FindTimeControllerFragment$OnFinishListener;

    iget-object v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mTimezone:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v6

    move-wide v2, p1

    move-wide v4, p3

    move-object v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/android/calendar/timely/FindTimeControllerFragment$OnFinishListener;->onFinishedWithSlot(JJLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected transitionBack()V
    .locals 5

    .prologue
    .line 869
    iget v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mState:I

    .line 870
    packed-switch v0, :pswitch_data_0

    .line 885
    :pswitch_0
    sget-object v1, Lcom/android/calendar/timely/FindTimeControllerFragment;->TAG:Ljava/lang/String;

    const-string v2, "Should not transition back from %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 887
    :goto_0
    invoke-direct {p0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->setSuggestionListVisibility()V

    .line 888
    return-void

    .line 874
    :pswitch_1
    invoke-direct {p0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->terminateWithCancel()V

    goto :goto_0

    .line 877
    :pswitch_2
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->setState(I)V

    .line 878
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 881
    :pswitch_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->transitionBackFromDurationTimeframeFilter(Lcom/android/calendar/timely/findatime/ui/DurationTimeframe;)V

    .line 882
    invoke-direct {p0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->logFiltersBack()V

    goto :goto_0

    .line 870
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected transitionToListShowData(Lcom/android/calendar/timely/net/FindTimeClient$Result;)V
    .locals 5

    .prologue
    .line 769
    iput-object p1, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mClientResult:Lcom/android/calendar/timely/net/FindTimeClient$Result;

    .line 770
    iget v0, p0, Lcom/android/calendar/timely/FindTimeControllerFragment;->mState:I

    .line 771
    packed-switch v0, :pswitch_data_0

    .line 786
    :pswitch_0
    sget-object v1, Lcom/android/calendar/timely/FindTimeControllerFragment;->TAG:Ljava/lang/String;

    const-string v2, "Should not transition to list show state from %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 788
    :goto_0
    invoke-direct {p0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->setSuggestionListVisibility()V

    .line 789
    return-void

    .line 775
    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->setState(I)V

    .line 776
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/FindTimeControllerFragment;->setListResult(Lcom/android/calendar/timely/net/FindTimeClient$Result;)V

    .line 777
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeControllerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x20

    .line 778
    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0

    .line 783
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/calendar/timely/FindTimeControllerFragment;->setListResult(Lcom/android/calendar/timely/net/FindTimeClient$Result;)V

    goto :goto_0

    .line 771
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
