.class public Lcom/android/calendar/event/EditHelper;
.super Ljava/lang/Object;
.source "EditHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/EditHelper$TimeInterval;,
        Lcom/android/calendar/event/EditHelper$SaveEventResult;,
        Lcom/android/calendar/event/EditHelper$ForceNotifyCompletionListener;,
        Lcom/android/calendar/event/EditHelper$SyncAdapterUri;,
        Lcom/android/calendar/event/EditHelper$AttendeeItem;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final WHITELISTED_PROPERTIES_FOR_GOOGLE_ACCOUNTS:[Ljava/lang/String;


# instance fields
.field public mEventOk:Z

.field private mEventRecurrence:Lcom/android/calendarcommon2/EventRecurrence;

.field public mService:Lcom/android/calendar/AsyncQueryService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 126
    const-class v0, Lcom/android/calendar/event/EditHelper;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/event/EditHelper;->TAG:Ljava/lang/String;

    .line 145
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "shouldCreateEvent"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/event/EditHelper;->WHITELISTED_PROPERTIES_FOR_GOOGLE_ACCOUNTS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v0, Lcom/android/calendarcommon2/EventRecurrence;

    invoke-direct {v0}, Lcom/android/calendarcommon2/EventRecurrence;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/event/EditHelper;->mEventRecurrence:Lcom/android/calendarcommon2/EventRecurrence;

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/event/EditHelper;->mEventOk:Z

    .line 198
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/EditHelper;->initialize(Landroid/content/Context;)V

    .line 199
    return-void
.end method

.method private addClientGeneratedSyncIdIfSupported(Lcom/android/calendar/event/CalendarEventModel;Landroid/content/ContentValues;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/event/CalendarEventModel;",
            "Landroid/content/ContentValues;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 698
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mICalUid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.google"

    iget-object v1, p1, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccountType:Ljava/lang/String;

    .line 699
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    const-string v0, "shouldCreateEvent"

    const-string v1, "1"

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    invoke-static {}, Lcom/android/calendar/event/EditHelper;->generateId()Ljava/lang/String;

    move-result-object v0

    .line 702
    const-string v1, "_sync_id"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 795
    const-string v0, "com.google"

    invoke-static {p0, p1, v0}, Lcom/android/calendar/event/EditHelper;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    .prologue
    .line 799
    .line 800
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    .line 801
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_name"

    .line 803
    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_type"

    .line 804
    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 799
    return-object v0
.end method

.method public static canModifyCalendar(Lcom/android/calendar/event/CalendarEventModel;)Z
    .locals 4

    .prologue
    .line 1672
    iget v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccessLevel:I

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_0

    iget-wide v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static canModifyEvent(Lcom/android/calendar/event/CalendarEventModel;)Z
    .locals 1

    .prologue
    .line 1667
    invoke-static {p0}, Lcom/android/calendar/event/EditHelper;->canModifyCalendar(Lcom/android/calendar/event/CalendarEventModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mIsOrganizer:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static canRespond(Lcom/android/calendar/event/CalendarEventModel;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1695
    invoke-static {p0}, Lcom/android/calendar/event/EditHelper;->canModifyCalendar(Lcom/android/calendar/event/CalendarEventModel;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1726
    :cond_0
    :goto_0
    return v1

    .line 1700
    :cond_1
    iget-boolean v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mIsOrganizer:Z

    if-nez v2, :cond_2

    move v1, v0

    .line 1701
    goto :goto_0

    .line 1705
    :cond_2
    iget-boolean v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mOrganizerCanRespond:Z

    if-eqz v2, :cond_0

    .line 1711
    iget-boolean v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mHasAttendeeData:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAttendeeId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1717
    :cond_3
    iget-boolean v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mHasAttendeeData:Z

    if-eqz v2, :cond_0

    .line 1722
    iget-object v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1726
    iget-object v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mAttendeeCollection:Lcom/android/calendar/event/AttendeeCollection;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mAttendeeCollection:Lcom/android/calendar/event/AttendeeCollection;

    .line 1727
    invoke-virtual {v2}, Lcom/android/calendar/event/AttendeeCollection;->getNumberPeople()I

    move-result v2

    if-lez v2, :cond_4

    :goto_1
    move v1, v0

    .line 1726
    goto :goto_0

    :cond_4
    move v0, v1

    .line 1727
    goto :goto_1
.end method

.method public static constrainRecurrenceToTimeframe(Lcom/android/calendarcommon2/EventRecurrence;JJLjava/lang/String;ZLcom/android/calendarcommon2/EventRecurrence;)V
    .locals 11

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 969
    if-eqz p7, :cond_0

    .line 970
    invoke-virtual {p0}, Lcom/android/calendarcommon2/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Lcom/android/calendarcommon2/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 973
    :cond_0
    iget v2, p0, Lcom/android/calendarcommon2/EventRecurrence;->count:I

    if-lez v2, :cond_3

    .line 986
    new-instance v5, Lcom/android/calendarcommon2/RecurrenceSet;

    invoke-virtual {p0}, Lcom/android/calendarcommon2/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2, v3, v3, v3}, Lcom/android/calendarcommon2/RecurrenceSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    new-instance v3, Lcom/android/calendarcommon2/RecurrenceProcessor;

    invoke-direct {v3}, Lcom/android/calendarcommon2/RecurrenceProcessor;-><init>()V

    .line 988
    new-instance v2, Lcom/android/calendar/time/Time;

    move-object/from16 v0, p5

    invoke-direct {v2, v0}, Lcom/android/calendar/time/Time;-><init>(Ljava/lang/String;)V

    .line 989
    invoke-virtual {v2, p1, p2}, Lcom/android/calendar/time/Time;->set(J)V

    .line 992
    :try_start_0
    invoke-virtual {v2}, Lcom/android/calendar/time/Time;->asAndroidTime()Landroid/text/format/Time;

    move-result-object v4

    move-wide v6, p1

    move-wide v8, p3

    invoke-virtual/range {v3 .. v9}, Lcom/android/calendarcommon2/RecurrenceProcessor;->expand(Landroid/text/format/Time;Lcom/android/calendarcommon2/RecurrenceSet;JJ)[J
    :try_end_0
    .catch Lcom/android/calendarcommon2/DateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 997
    array-length v3, v2

    if-nez v3, :cond_1

    .line 998
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "can\'t use this method on first instance"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 994
    :catch_0
    move-exception v2

    .line 995
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1000
    :cond_1
    array-length v2, v2

    iput v2, p0, Lcom/android/calendarcommon2/EventRecurrence;->count:I

    .line 1001
    if-eqz p7, :cond_2

    .line 1002
    move-object/from16 v0, p7

    iget v2, v0, Lcom/android/calendarcommon2/EventRecurrence;->count:I

    iget v3, p0, Lcom/android/calendarcommon2/EventRecurrence;->count:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p7

    iput v2, v0, Lcom/android/calendarcommon2/EventRecurrence;->count:I

    .line 1016
    :cond_2
    :goto_0
    return-void

    .line 1005
    :cond_3
    new-instance v2, Lcom/android/calendar/time/Time;

    const-string v3, "UTC"

    invoke-direct {v2, v3}, Lcom/android/calendar/time/Time;-><init>(Ljava/lang/String;)V

    .line 1006
    const-wide/16 v4, 0x3e8

    sub-long v4, p3, v4

    invoke-virtual {v2, v4, v5}, Lcom/android/calendar/time/Time;->set(J)V

    .line 1007
    if-eqz p6, :cond_4

    .line 1008
    iput v6, v2, Lcom/android/calendar/time/Time;->hour:I

    .line 1009
    iput v6, v2, Lcom/android/calendar/time/Time;->minute:I

    .line 1010
    iput v6, v2, Lcom/android/calendar/time/Time;->second:I

    .line 1011
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/calendar/time/Time;->allDay:Z

    .line 1012
    invoke-virtual {v2, v6}, Lcom/android/calendar/time/Time;->normalize(Z)J

    .line 1014
    :cond_4
    invoke-virtual {v2}, Lcom/android/calendar/time/Time;->format2445()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendarcommon2/EventRecurrence;->until:Ljava/lang/String;

    goto :goto_0
.end method

.method public static constructDefaultStartTime(J)J
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 842
    new-instance v0, Lcom/android/calendar/time/Time;

    invoke-direct {v0}, Lcom/android/calendar/time/Time;-><init>()V

    .line 843
    invoke-virtual {v0, p0, p1}, Lcom/android/calendar/time/Time;->set(J)V

    .line 844
    iput v2, v0, Lcom/android/calendar/time/Time;->second:I

    .line 845
    const/16 v1, 0x1e

    iput v1, v0, Lcom/android/calendar/time/Time;->minute:I

    .line 846
    invoke-virtual {v0, v2}, Lcom/android/calendar/time/Time;->toMillis(Z)J

    move-result-wide v0

    .line 847
    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    .line 850
    :goto_0
    return-wide v0

    :cond_0
    const-wide/32 v2, 0x1b7740

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public static constructDefaultStartTime(Lcom/android/calendar/time/Time;Landroid/content/Context;)J
    .locals 2

    .prologue
    .line 856
    new-instance v0, Lcom/android/calendar/time/Time;

    invoke-static {p1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/calendar/time/Time;-><init>(Ljava/lang/String;)V

    .line 857
    invoke-virtual {v0}, Lcom/android/calendar/time/Time;->setToNow()V

    .line 858
    iget v1, v0, Lcom/android/calendar/time/Time;->hour:I

    iput v1, p0, Lcom/android/calendar/time/Time;->hour:I

    .line 859
    iget v1, v0, Lcom/android/calendar/time/Time;->minute:I

    iput v1, p0, Lcom/android/calendar/time/Time;->minute:I

    .line 860
    iget v0, v0, Lcom/android/calendar/time/Time;->second:I

    iput v0, p0, Lcom/android/calendar/time/Time;->second:I

    .line 862
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/calendar/time/Time;->toMillis(Z)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/calendar/event/EditHelper;->constructDefaultStartTime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static constructExtendedPropertiesDeleteCondition([Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 718
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 720
    :cond_0
    const-string v0, ""

    .line 723
    :goto_0
    return-object v0

    :cond_1
    const-string v0, " AND name NOT IN (\'"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\',\'"

    .line 724
    invoke-static {v1, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static fillCalendarDisplay(Landroid/view/View;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1938
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1939
    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 1962
    :cond_0
    :goto_0
    return-void

    .line 1944
    :cond_1
    invoke-static {p3}, Lcom/android/calendar/Utils;->isValidEmail(Ljava/lang/String;)Z

    move-result v1

    .line 1948
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1949
    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1950
    sget v3, Lcom/android/calendar/R$string;->my_events:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1953
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1955
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1956
    invoke-virtual {v1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 1957
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1960
    :cond_3
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static generateId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 710
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 709
    invoke-static {v0}, Lcom/google/android/calendar/utils/Base32EncodingHelper;->encodeLowercaseNoPaddingBase32Hex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getAddressesFromList(Ljava/lang/String;Lcom/android/common/Rfc822Validator;)Ljava/util/LinkedHashSet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/common/Rfc822Validator;",
            ")",
            "Ljava/util/LinkedHashSet",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation

    .prologue
    .line 814
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 815
    invoke-static {p0, v1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;Ljava/util/Collection;)V

    .line 816
    if-nez p1, :cond_0

    move-object v0, v1

    .line 831
    :goto_0
    return-object v0

    .line 822
    :cond_0
    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 823
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 824
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/util/Rfc822Token;

    .line 825
    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/common/Rfc822Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 826
    sget-object v3, Lcom/android/calendar/event/EditHelper;->TAG:Ljava/lang/String;

    const-string v4, "Dropping invalid attendee email address: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 827
    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    .line 826
    invoke-static {v3, v4, v5}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 828
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 831
    goto :goto_0
.end method

.method private getEventExtrasForModel(Lcom/android/calendar/event/CalendarEventModel;)Landroid/content/ContentValues;
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 732
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 735
    const/4 v0, 0x0

    .line 736
    iget-boolean v3, p1, Lcom/android/calendar/event/CalendarEventModel;->mHasSmartMail:Z

    if-eqz v3, :cond_0

    move v0, v1

    .line 739
    :cond_0
    iget-object v3, p1, Lcom/android/calendar/event/CalendarEventModel;->mExtras:Lcom/android/calendar/event/EventExtras;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/android/calendar/event/CalendarEventModel;->mExtras:Lcom/android/calendar/event/EventExtras;

    iget-object v4, p1, Lcom/android/calendar/event/CalendarEventModel;->mTitle:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/android/calendar/event/EventExtras;->hasImageData(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 740
    or-int/lit8 v0, v0, 0x2

    .line 742
    :cond_1
    iget-boolean v3, p1, Lcom/android/calendar/event/CalendarEventModel;->mEndTimeUnspecified:Z

    if-eqz v3, :cond_2

    .line 743
    or-int/lit8 v0, v0, 0x4

    .line 745
    :cond_2
    iget v3, p1, Lcom/android/calendar/event/CalendarEventModel;->mAccessLevel:I

    const/16 v4, 0x64

    if-ne v3, v4, :cond_3

    .line 746
    or-int/lit8 v0, v0, 0x8

    .line 748
    :cond_3
    iget-object v3, p1, Lcom/android/calendar/event/CalendarEventModel;->mExtras:Lcom/android/calendar/event/EventExtras;

    if-eqz v3, :cond_4

    iget-object v3, p1, Lcom/android/calendar/event/CalendarEventModel;->mExtras:Lcom/android/calendar/event/EventExtras;

    invoke-interface {v3}, Lcom/android/calendar/event/EventExtras;->hasStructuredLocation()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 749
    or-int/lit8 v0, v0, 0x10

    .line 751
    :cond_4
    iget-boolean v3, p1, Lcom/android/calendar/event/CalendarEventModel;->mIncludeHangout:Z

    if-nez v3, :cond_5

    invoke-virtual {p1}, Lcom/android/calendar/event/CalendarEventModel;->getHangout()Lcom/google/calendar/v2/client/service/api/events/Hangout;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/calendar/v2/client/service/api/events/Hangout;->hasHangout()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 752
    :cond_5
    or-int/lit8 v0, v0, 0x20

    .line 754
    :cond_6
    const-string v3, "sync_data9"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    const-string v0, "dirty"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 759
    return-object v2
.end method

.method private getTimes(Lcom/android/calendar/event/CalendarEventModel;JJ)Lcom/android/calendar/event/EditHelper$TimeInterval;
    .locals 10

    .prologue
    const-wide/32 v8, 0x5265c00

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 1743
    iget-boolean v1, p1, Lcom/android/calendar/event/CalendarEventModel;->mAllDay:Z

    .line 1744
    iget-object v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mRrule:Ljava/lang/String;

    .line 1745
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mTimezone:Ljava/lang/String;

    .line 1746
    if-nez v0, :cond_0

    .line 1747
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 1749
    :cond_0
    new-instance v3, Lcom/android/calendar/time/Time;

    invoke-direct {v3, v0}, Lcom/android/calendar/time/Time;-><init>(Ljava/lang/String;)V

    .line 1750
    new-instance v4, Lcom/android/calendar/time/Time;

    invoke-direct {v4, v0}, Lcom/android/calendar/time/Time;-><init>(Ljava/lang/String;)V

    .line 1752
    invoke-virtual {v3, p2, p3}, Lcom/android/calendar/time/Time;->set(J)V

    .line 1753
    invoke-virtual {v4, p4, p5}, Lcom/android/calendar/time/Time;->set(J)V

    .line 1754
    invoke-direct {p0, v3, v4, v2, p1}, Lcom/android/calendar/event/EditHelper;->offsetStartTimeIfNecessary(Lcom/android/calendar/time/Time;Lcom/android/calendar/time/Time;Ljava/lang/String;Lcom/android/calendar/event/CalendarEventModel;)V

    .line 1758
    if-eqz v1, :cond_2

    .line 1761
    const-string v6, "UTC"

    .line 1762
    iput v5, v3, Lcom/android/calendar/time/Time;->hour:I

    .line 1763
    iput v5, v3, Lcom/android/calendar/time/Time;->minute:I

    .line 1764
    iput v5, v3, Lcom/android/calendar/time/Time;->second:I

    .line 1765
    iput-object v6, v3, Lcom/android/calendar/time/Time;->timezone:Ljava/lang/String;

    .line 1766
    invoke-virtual {v3, v7}, Lcom/android/calendar/time/Time;->normalize(Z)J

    move-result-wide v2

    .line 1768
    iput v5, v4, Lcom/android/calendar/time/Time;->hour:I

    .line 1769
    iput v5, v4, Lcom/android/calendar/time/Time;->minute:I

    .line 1770
    iput v5, v4, Lcom/android/calendar/time/Time;->second:I

    .line 1771
    iput-object v6, v4, Lcom/android/calendar/time/Time;->timezone:Ljava/lang/String;

    .line 1772
    invoke-virtual {v4, v7}, Lcom/android/calendar/time/Time;->normalize(Z)J

    move-result-wide v4

    .line 1773
    add-long v0, v2, v8

    cmp-long v0, v4, v0

    if-gez v0, :cond_1

    .line 1776
    add-long v4, v2, v8

    .line 1783
    :cond_1
    :goto_0
    new-instance v1, Lcom/android/calendar/event/EditHelper$TimeInterval;

    invoke-direct/range {v1 .. v6}, Lcom/android/calendar/event/EditHelper$TimeInterval;-><init>(JJLjava/lang/String;)V

    return-object v1

    .line 1779
    :cond_2
    invoke-virtual {v3, v7}, Lcom/android/calendar/time/Time;->toMillis(Z)J

    move-result-wide v2

    .line 1780
    invoke-virtual {v4, v7}, Lcom/android/calendar/time/Time;->toMillis(Z)J

    move-result-wide v4

    move-object v6, v0

    goto :goto_0
.end method

.method public static isSameEvent(Lcom/android/calendar/event/CalendarEventModel;Lcom/android/calendar/event/CalendarEventModel;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1062
    if-nez p1, :cond_1

    .line 1073
    :cond_0
    :goto_0
    return v0

    .line 1066
    :cond_1
    iget-wide v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarId:J

    iget-wide v4, p1, Lcom/android/calendar/event/CalendarEventModel;->mCalendarId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    move v0, v1

    .line 1067
    goto :goto_0

    .line 1069
    :cond_2
    iget-wide v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mId:J

    iget-wide v4, p1, Lcom/android/calendar/event/CalendarEventModel;->mId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    .line 1070
    goto :goto_0
.end method

.method private offsetStartTimeIfNecessary(Lcom/android/calendar/time/Time;Lcom/android/calendar/time/Time;Ljava/lang/String;Lcom/android/calendar/event/CalendarEventModel;)V
    .locals 7

    .prologue
    const v2, 0x7fffffff

    const/4 v6, 0x1

    .line 1860
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1926
    :cond_0
    :goto_0
    return-void

    .line 1865
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/EditHelper;->mEventRecurrence:Lcom/android/calendarcommon2/EventRecurrence;

    invoke-virtual {v0, p3}, Lcom/android/calendarcommon2/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 1871
    iget-object v0, p0, Lcom/android/calendar/event/EditHelper;->mEventRecurrence:Lcom/android/calendarcommon2/EventRecurrence;

    iget v0, v0, Lcom/android/calendarcommon2/EventRecurrence;->freq:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 1875
    iget-object v0, p0, Lcom/android/calendar/event/EditHelper;->mEventRecurrence:Lcom/android/calendarcommon2/EventRecurrence;

    iget-object v0, v0, Lcom/android/calendarcommon2/EventRecurrence;->byday:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/event/EditHelper;->mEventRecurrence:Lcom/android/calendarcommon2/EventRecurrence;

    iget-object v0, v0, Lcom/android/calendarcommon2/EventRecurrence;->byday:[I

    array-length v0, v0

    iget-object v1, p0, Lcom/android/calendar/event/EditHelper;->mEventRecurrence:Lcom/android/calendarcommon2/EventRecurrence;

    iget v1, v1, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    if-gt v0, v1, :cond_0

    .line 1883
    iget-object v0, p0, Lcom/android/calendar/event/EditHelper;->mEventRecurrence:Lcom/android/calendarcommon2/EventRecurrence;

    iget v0, v0, Lcom/android/calendarcommon2/EventRecurrence;->wkst:I

    invoke-static {v0}, Lcom/android/calendarcommon2/EventRecurrence;->day2TimeDay(I)I

    move-result v4

    .line 1884
    iget v5, p1, Lcom/android/calendar/time/Time;->weekDay:I

    .line 1885
    const/4 v0, 0x0

    move v1, v2

    :goto_1
    iget-object v3, p0, Lcom/android/calendar/event/EditHelper;->mEventRecurrence:Lcom/android/calendarcommon2/EventRecurrence;

    iget v3, v3, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    if-ge v0, v3, :cond_7

    .line 1886
    iget-object v3, p0, Lcom/android/calendar/event/EditHelper;->mEventRecurrence:Lcom/android/calendarcommon2/EventRecurrence;

    iget-object v3, v3, Lcom/android/calendarcommon2/EventRecurrence;->byday:[I

    aget v3, v3, v0

    invoke-static {v3}, Lcom/android/calendarcommon2/EventRecurrence;->day2TimeDay(I)I

    move-result v3

    .line 1887
    if-eq v3, v5, :cond_0

    .line 1892
    if-ge v3, v4, :cond_2

    .line 1894
    add-int/lit8 v3, v3, 0x7

    .line 1897
    :cond_2
    if-le v3, v5, :cond_4

    if-lt v3, v1, :cond_3

    if-ge v1, v5, :cond_4

    :cond_3
    move v1, v3

    .line 1902
    :cond_4
    if-eq v1, v2, :cond_5

    if-ge v1, v5, :cond_6

    .line 1904
    :cond_5
    if-ge v3, v1, :cond_6

    move v1, v3

    .line 1885
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1913
    :cond_7
    if-ge v1, v5, :cond_8

    .line 1914
    add-int/lit8 v1, v1, 0x7

    .line 1916
    :cond_8
    sub-int v0, v1, v5

    .line 1917
    iget v1, p1, Lcom/android/calendar/time/Time;->monthDay:I

    add-int/2addr v1, v0

    iput v1, p1, Lcom/android/calendar/time/Time;->monthDay:I

    .line 1918
    iget v1, p2, Lcom/android/calendar/time/Time;->monthDay:I

    add-int/2addr v0, v1

    iput v0, p2, Lcom/android/calendar/time/Time;->monthDay:I

    .line 1919
    invoke-virtual {p1, v6}, Lcom/android/calendar/time/Time;->normalize(Z)J

    move-result-wide v0

    .line 1920
    invoke-virtual {p2, v6}, Lcom/android/calendar/time/Time;->normalize(Z)J

    move-result-wide v2

    .line 1924
    iput-wide v0, p4, Lcom/android/calendar/event/CalendarEventModel;->mStart:J

    .line 1925
    iput-wide v2, p4, Lcom/android/calendar/event/CalendarEventModel;->mEnd:J

    goto :goto_0
.end method

.method static saveExtendedProperties(Ljava/util/ArrayList;JLjava/util/Map;Ljava/util/Map;[Ljava/lang/String;ZLcom/android/calendar/event/EditHelper$SyncAdapterUri;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "Z",
            "Lcom/android/calendar/event/EditHelper$SyncAdapterUri;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1316
    if-nez p6, :cond_0

    invoke-interface {p3, p4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 1341
    :goto_0
    return v0

    .line 1322
    :cond_0
    const-string v0, "event_id=?"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1323
    invoke-static {p5}, Lcom/android/calendar/event/EditHelper;->constructExtendedPropertiesDeleteCondition([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1324
    :goto_1
    new-array v3, v2, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 1326
    invoke-virtual {p7}, Lcom/android/calendar/event/EditHelper$SyncAdapterUri;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 1327
    invoke-virtual {v1, v0, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 1328
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1330
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1332
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1333
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 1334
    const-string v5, "name"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1335
    const-string v1, "value"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    const-string v0, "event_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1337
    invoke-virtual {p7}, Lcom/android/calendar/event/EditHelper$SyncAdapterUri;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1338
    invoke-virtual {v0, v3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1339
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1323
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move v0, v2

    .line 1341
    goto/16 :goto_0
.end method

.method static saveExtendedPropertiesWithBackRef(Ljava/util/ArrayList;ILjava/util/Map;Ljava/util/Map;[Ljava/lang/String;ZLcom/android/calendar/event/EditHelper$SyncAdapterUri;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "Z",
            "Lcom/android/calendar/event/EditHelper$SyncAdapterUri;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1366
    if-nez p5, :cond_0

    invoke-interface {p2, p3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 1392
    :goto_0
    return v0

    .line 1373
    :cond_0
    invoke-virtual {p6}, Lcom/android/calendar/event/EditHelper$SyncAdapterUri;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 1374
    const-string v0, "event_id=?"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1375
    invoke-static {p4}, Lcom/android/calendar/event/EditHelper;->constructExtendedPropertiesDeleteCondition([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1376
    :goto_1
    new-array v4, v2, [Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 1377
    invoke-virtual {v3, v1, p1}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    .line 1378
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1380
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1383
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1384
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 1385
    const-string v5, "name"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1386
    const-string v1, "value"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    invoke-virtual {p6}, Lcom/android/calendar/event/EditHelper$SyncAdapterUri;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1388
    invoke-virtual {v0, v3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1389
    const-string v1, "event_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1390
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1375
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move v0, v2

    .line 1392
    goto/16 :goto_0
.end method

.method public static saveReminders(Ljava/util/ArrayList;JLjava/util/ArrayList;Ljava/util/ArrayList;ZLandroid/accounts/Account;JZLandroid/content/Context;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;",
            ">;Z",
            "Landroid/accounts/Account;",
            "JZ",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1096
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p5, :cond_0

    .line 1097
    const/4 v0, 0x0

    .line 1125
    :goto_0
    return v0

    .line 1101
    :cond_0
    const-string v0, "event_id=?"

    .line 1102
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1103
    sget-object v2, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    .line 1104
    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 1105
    invoke-virtual {v2, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 1106
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1108
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1111
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;

    .line 1112
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 1113
    const-string v3, "minutes"

    invoke-virtual {v0}, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;->getMinutes()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1114
    const-string v3, "method"

    invoke-virtual {v0}, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;->getMethod()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1115
    const-string v0, "event_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1116
    sget-object v0, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1117
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1120
    :cond_1
    if-eqz p10, :cond_2

    move-object v1, p3

    move-object v2, p4

    move-object v3, p6

    move-wide/from16 v4, p7

    move/from16 v6, p9

    move-object/from16 v7, p10

    .line 1121
    invoke-static/range {v1 .. v7}, Lcom/android/calendar/event/EditHelper;->updateRecentNotifications(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/accounts/Account;JZLandroid/content/Context;)V

    .line 1125
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static saveRemindersWithBackRef(Ljava/util/ArrayList;ILjava/util/ArrayList;Ljava/util/ArrayList;ZLandroid/accounts/Account;JZLandroid/content/Context;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;",
            ">;Z",
            "Landroid/accounts/Account;",
            "JZ",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1148
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p4, :cond_0

    .line 1149
    const/4 v0, 0x0

    .line 1176
    :goto_0
    return v0

    .line 1153
    :cond_0
    sget-object v0, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    .line 1154
    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1155
    const-string v1, "event_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 1156
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    .line 1157
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1159
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1162
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;

    .line 1163
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 1164
    const-string v3, "minutes"

    invoke-virtual {v0}, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;->getMinutes()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1165
    const-string v3, "method"

    invoke-virtual {v0}, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;->getMethod()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1166
    sget-object v0, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1167
    const-string v3, "event_id"

    invoke-virtual {v0, v3, p1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1168
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1171
    :cond_1
    if-eqz p9, :cond_2

    move-object v1, p2

    move-object v2, p3

    move-object v3, p5

    move-wide v4, p6

    move/from16 v6, p8

    move-object/from16 v7, p9

    .line 1172
    invoke-static/range {v1 .. v7}, Lcom/android/calendar/event/EditHelper;->updateRecentNotifications(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/accounts/Account;JZLandroid/content/Context;)V

    .line 1176
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static setModelFromAttendeeCursor(Lcom/android/calendar/event/CalendarEventModel;Landroid/database/Cursor;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1528
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1529
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mNumOfAttendees:I

    .line 1531
    :cond_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1532
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1533
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1534
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1537
    if-ne v6, v8, :cond_2

    .line 1538
    if-eqz v4, :cond_1

    .line 1539
    iput-object v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    .line 1541
    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/calendar/event/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    .line 1542
    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mIsOrganizer:Z

    .line 1545
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1546
    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mOrganizerDisplayName:Ljava/lang/String;

    .line 1553
    :cond_2
    :goto_1
    if-eqz v4, :cond_6

    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    .line 1555
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1556
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAttendeeId:I

    .line 1557
    iput v5, p0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAttendeeStatus:I

    .line 1558
    iput-object v3, p0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerName:Ljava/lang/String;

    .line 1565
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1572
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 1542
    goto :goto_0

    .line 1548
    :cond_5
    iput-object v3, p0, Lcom/android/calendar/event/CalendarEventModel;->mOrganizerDisplayName:Ljava/lang/String;

    goto :goto_1

    .line 1559
    :cond_6
    if-eqz v4, :cond_7

    .line 1560
    new-instance v0, Lcom/android/calendar/event/CalendarEventModel$Attendee;

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/android/calendar/event/CalendarEventModel$Attendee;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/CalendarEventModel;->addAttendee(Lcom/android/calendar/event/CalendarEventModel$Attendee;)V

    goto :goto_2

    .line 1563
    :cond_7
    sget-object v0, Lcom/android/calendar/event/EditHelper;->TAG:Ljava/lang/String;

    const-string v3, "Email of the attendee is null!"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2
.end method

.method public static setModelFromEventCursor(Lcom/android/calendar/event/CalendarEventModel;Landroid/database/Cursor;)Z
    .locals 1

    .prologue
    .line 1400
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/calendar/event/EditHelper;->setModelFromEventCursor(Lcom/android/calendar/event/CalendarEventModel;Landroid/database/Cursor;I)Z

    move-result v0

    return v0
.end method

.method public static setModelFromEventCursor(Lcom/android/calendar/event/CalendarEventModel;Landroid/database/Cursor;I)Z
    .locals 9

    .prologue
    const/16 v8, 0x16

    const/16 v7, 0x9

    const/16 v6, 0x8

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1415
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1416
    :cond_0
    sget-object v0, Lcom/android/calendar/event/EditHelper;->TAG:Ljava/lang/String;

    const-string v1, "Attempted to build non-existent model or from an incorrect query."

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v1, v2

    .line 1513
    :cond_1
    :goto_0
    return v1

    .line 1420
    :cond_2
    invoke-virtual {p0}, Lcom/android/calendar/event/CalendarEventModel;->clear()V

    .line 1422
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v4, v0

    iput-wide v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mId:J

    .line 1424
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mId:J

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mUri:Ljava/lang/String;

    .line 1425
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mTitle:Ljava/lang/String;

    .line 1426
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mDescription:Ljava/lang/String;

    .line 1428
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mLocation:Ljava/lang/String;

    .line 1429
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mAllDay:Z

    .line 1430
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mHasAlarm:Z

    .line 1431
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v4, v0

    iput-wide v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarId:J

    .line 1432
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mDbStart:J

    iput-wide v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mStart:J

    .line 1433
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1434
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1435
    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mTimezone:Ljava/lang/String;

    .line 1437
    :cond_3
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1438
    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mRrule:Ljava/lang/String;

    .line 1439
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mIsRepeating:Z

    .line 1440
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mSyncId:Ljava/lang/String;

    .line 1441
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mAvailability:I

    .line 1442
    const/16 v0, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    .line 1443
    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mHasAttendeeData:Z

    .line 1444
    const/16 v0, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    .line 1445
    const/16 v0, 0x14

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalId:J

    .line 1448
    const/16 v0, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    .line 1449
    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mOrganizerDisplayName:Ljava/lang/String;

    .line 1451
    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 1452
    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/calendar/event/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 1453
    :goto_5
    iput-boolean v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mIsOrganizer:Z

    .line 1455
    const/16 v0, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mGuestsCanModify:Z

    .line 1457
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1456
    invoke-static {v0}, Lcom/android/calendar/Utils;->getDisplayColorFromColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mRawCalendarColor:I

    .line 1460
    const/16 v0, 0x17

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1461
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1466
    :goto_7
    invoke-static {v0}, Lcom/android/calendar/Utils;->getDisplayColorFromColor(I)I

    move-result v0

    .line 1467
    invoke-virtual {p0, v0}, Lcom/android/calendar/event/CalendarEventModel;->setEventColor(I)V

    .line 1469
    const/16 v0, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mAccessLevel:I

    .line 1470
    const/16 v0, 0x15

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mEventStatus:I

    .line 1473
    iget-boolean v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mIsRepeating:Z

    if-eqz v0, :cond_c

    .line 1474
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mDuration:Ljava/lang/String;

    .line 1479
    :goto_8
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mDbEnd:J

    .line 1480
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mDbDuration:Ljava/lang/String;

    .line 1482
    iget-wide v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mStart:J

    iput-wide v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalStart:J

    .line 1483
    iget-wide v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mEnd:J

    iput-wide v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalEnd:J

    .line 1485
    iput-boolean v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mModelUpdatedWithEventCursor:Z

    .line 1488
    const/16 v0, 0x18

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1489
    const/16 v0, 0x1f4

    if-lt v3, v0, :cond_d

    move v0, v1

    :goto_9
    iput-boolean v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerCanModify:Z

    .line 1490
    const/16 v0, 0x64

    if-ne v3, v0, :cond_e

    move v0, v1

    :goto_a
    iput-boolean v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mIsBusyFreeCalendar:Z

    .line 1491
    const/16 v0, 0x19

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mCustomAppPackage:Ljava/lang/String;

    .line 1492
    const/16 v0, 0x1a

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mCustomAppUri:Ljava/lang/String;

    .line 1493
    iput v3, p0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccessLevel:I

    .line 1496
    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mLocation:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/calendar/event/ConferenceCallUtils;->parseAccessCode(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mAccessCodes:Ljava/util/Set;

    .line 1497
    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mAccessCodes:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/calendar/event/CalendarEventModel;->mDescription:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/calendar/event/ConferenceCallUtils;->parseAccessCode(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1500
    const/16 v0, 0x1b

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1501
    if-eqz v0, :cond_1

    .line 1503
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/android/calendar/event/CalendarEventModel;->mExtrasBitmask:I

    .line 1506
    iget v3, p0, Lcom/android/calendar/event/CalendarEventModel;->mExtrasBitmask:I

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/calendar/Utils;->getEventExtrasFlag(II)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/calendar/event/CalendarEventModel;->mHasSmartMail:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1508
    :catch_0
    move-exception v3

    .line 1509
    sget-object v3, Lcom/android/calendar/event/EditHelper;->TAG:Ljava/lang/String;

    const-string v4, "Could not decode: %s"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-static {v3, v4, v5}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 1429
    goto/16 :goto_1

    :cond_5
    move v0, v2

    .line 1430
    goto/16 :goto_2

    :cond_6
    move v0, v2

    .line 1439
    goto/16 :goto_3

    :cond_7
    move v0, v2

    .line 1443
    goto/16 :goto_4

    .line 1453
    :cond_8
    iget-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    if-nez v0, :cond_9

    move v0, v1

    goto/16 :goto_5

    :cond_9
    move v0, v2

    goto/16 :goto_5

    :cond_a
    move v0, v2

    .line 1455
    goto/16 :goto_6

    .line 1463
    :cond_b
    const/16 v0, 0x17

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto/16 :goto_7

    .line 1476
    :cond_c
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mEnd:J

    goto/16 :goto_8

    :cond_d
    move v0, v2

    .line 1489
    goto/16 :goto_9

    :cond_e
    move v0, v2

    .line 1490
    goto :goto_a
.end method

.method public static setModelFromExtendedProperties(Lcom/android/calendar/event/CalendarEventModel;Landroid/database/Cursor;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1602
    if-eqz p0, :cond_b

    if-eqz p1, :cond_b

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1604
    :cond_0
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1605
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1606
    if-eqz v1, :cond_a

    .line 1610
    const-string v0, "hangoutLink"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1611
    iput-object v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mFallbackHangoutLink:Ljava/lang/String;

    .line 1613
    :cond_1
    const-string v0, "includeHangout"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 1614
    const-string v0, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mIncludeHangout:Z

    .line 1616
    :cond_2
    const-string v0, "endTimeUnspecified"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    .line 1617
    const-string v0, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mEndTimeUnspecified:Z

    .line 1619
    :cond_3
    const-string v0, "secretEvent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    const-string v0, "1"

    .line 1620
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1622
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mAccessLevel:I

    .line 1624
    :cond_4
    const-string v0, "iCalUid"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    .line 1625
    iput-object v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mICalUid:Ljava/lang/String;

    .line 1627
    :cond_5
    const-string v0, "sequenceNumber"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz v2, :cond_6

    .line 1629
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mSequence:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1634
    :cond_6
    :goto_0
    const-string v0, "organizer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz v2, :cond_7

    .line 1635
    iput-object v2, p0, Lcom/android/calendar/event/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    .line 1637
    :cond_7
    const-string v0, "private:iCalDtStamp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz v2, :cond_8

    .line 1639
    :try_start_1
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/calendar/event/CalendarEventModel;->mICalDtStamp:J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1644
    :cond_8
    :goto_1
    const-string v0, "clearDefaultReminders"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1645
    iput-boolean v7, p0, Lcom/android/calendar/event/CalendarEventModel;->mClearDefaultReminders:Z

    .line 1647
    :cond_9
    const-string v0, "meeting_status"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz v2, :cond_a

    .line 1649
    :try_start_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/CalendarEventModel;->mMeetingStatus:Ljava/lang/Integer;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1655
    :cond_a
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1657
    :cond_b
    return-void

    .line 1630
    :catch_0
    move-exception v0

    .line 1631
    sget-object v3, Lcom/android/calendar/event/EditHelper;->TAG:Ljava/lang/String;

    const-string v4, "Cannot parse sequence number"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v0, v4, v5}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 1640
    :catch_1
    move-exception v0

    .line 1641
    sget-object v3, Lcom/android/calendar/event/EditHelper;->TAG:Ljava/lang/String;

    const-string v4, "Could not parse iCal Date Stamp"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v0, v4, v5}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 1650
    :catch_2
    move-exception v0

    .line 1651
    sget-object v1, Lcom/android/calendar/event/EditHelper;->TAG:Ljava/lang/String;

    const-string v2, "Could not parse meeting status"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2
.end method

.method public static setModelFromRemindersCursor(Lcom/android/calendar/event/CalendarEventModel;Landroid/database/Cursor;)V
    .locals 2

    .prologue
    .line 1584
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1586
    :cond_0
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1587
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1588
    invoke-static {v0, v1}, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;->valueOf(II)Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;

    move-result-object v0

    .line 1589
    iget-object v1, p0, Lcom/android/calendar/event/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1590
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1592
    :cond_1
    return-void
.end method

.method private static updateRecentNotifications(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/accounts/Account;JZLandroid/content/Context;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;",
            ">;",
            "Landroid/accounts/Account;",
            "JZ",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1190
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1217
    :cond_0
    :goto_0
    return-void

    .line 1196
    :cond_1
    invoke-static {}, Lcom/android/calendar/ExtensionsFactory;->getRecentAndDefaultNotificationsFactory()Lcom/android/calendar/timely/settings/RecentAndDefaultNotificationsFactory;

    move-result-object v1

    .line 1199
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 1198
    invoke-virtual {v1, p6, v0, p2, p5}, Lcom/android/calendar/timely/settings/RecentAndDefaultNotificationsFactory;->getDefaultNotifications(Landroid/content/Context;Ljava/lang/String;Landroid/accounts/Account;Z)Ljava/util/List;

    move-result-object v2

    .line 1202
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1203
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/CalendarEventModel$ReminderEntry;

    .line 1204
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1208
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1211
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1216
    invoke-virtual {v1, p6, p2, p5, v3}, Lcom/android/calendar/timely/settings/RecentAndDefaultNotificationsFactory;->updateRecentNotifications(Landroid/content/Context;Landroid/accounts/Account;ZLjava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method addRecurrenceRule(Landroid/content/ContentValues;Lcom/android/calendar/event/CalendarEventModel;)V
    .locals 10

    .prologue
    const-wide/32 v8, 0x5265c00

    const/16 v7, 0x16

    .line 1221
    iget-object v0, p2, Lcom/android/calendar/event/CalendarEventModel;->mRrule:Ljava/lang/String;

    .line 1223
    const-string v1, "rrule"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    iget-wide v2, p2, Lcom/android/calendar/event/CalendarEventModel;->mEnd:J

    .line 1225
    iget-wide v4, p2, Lcom/android/calendar/event/CalendarEventModel;->mStart:J

    .line 1226
    iget-object v0, p2, Lcom/android/calendar/event/CalendarEventModel;->mDuration:Ljava/lang/String;

    .line 1228
    iget-boolean v1, p2, Lcom/android/calendar/event/CalendarEventModel;->mAllDay:Z

    .line 1229
    cmp-long v6, v2, v4

    if-ltz v6, :cond_2

    .line 1230
    if-eqz v1, :cond_1

    .line 1232
    sub-long v0, v2, v4

    add-long/2addr v0, v8

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    div-long/2addr v0, v8

    .line 1234
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "P"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "D"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1250
    :cond_0
    :goto_0
    const-string v1, "duration"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    const-string v1, "dtend"

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1252
    return-void

    .line 1237
    :cond_1
    sub-long v0, v2, v4

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 1238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "P"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1240
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1243
    if-eqz v1, :cond_3

    .line 1244
    const-string v0, "P1D"

    goto :goto_0

    .line 1246
    :cond_3
    const-string v0, "P3600S"

    goto :goto_0
.end method

.method public applyAttachmentExtrasFromEvent(Lcom/android/calendar/event/EventExtras;Lcom/google/calendar/v2/client/service/api/events/Event;)Lcom/android/calendar/event/EventExtras;
    .locals 0

    .prologue
    .line 1985
    return-object p1
.end method

.method public applyLocationExtrasFromEventV2(Lcom/android/calendar/event/EventExtras;Lcom/google/calendar/v2/client/service/api/events/Event;)Lcom/android/calendar/event/EventExtras;
    .locals 0

    .prologue
    .line 1977
    return-object p1
.end method

.method public applyTitleAnnotationExtrasFromEvent(Lcom/android/calendar/event/EventExtras;Lcom/google/calendar/v2/client/service/api/events/Event;)Lcom/android/calendar/event/EventExtras;
    .locals 0

    .prologue
    .line 1981
    return-object p1
.end method

.method checkTimeDependentFields(Lcom/android/calendar/event/CalendarEventModel;Lcom/android/calendar/event/CalendarEventModel;Landroid/content/ContentValues;I)V
    .locals 17

    .prologue
    .line 881
    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalStart:J

    .line 882
    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalEnd:J

    .line 883
    move-object/from16 v0, p1

    iget-boolean v8, v0, Lcom/android/calendar/event/CalendarEventModel;->mAllDay:Z

    .line 884
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/calendar/event/CalendarEventModel;->mRrule:Ljava/lang/String;

    .line 885
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/calendar/event/CalendarEventModel;->mTimezone:Ljava/lang/String;

    .line 891
    const-string v2, "dtstart"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/calendar/event/CalendarEventModel;->mStart:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 892
    const-string v2, "dtend"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/calendar/event/CalendarEventModel;->mEnd:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 893
    const-string v2, "allDay"

    .line 894
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, p2

    iget-boolean v3, v0, Lcom/android/calendar/event/CalendarEventModel;->mAllDay:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 896
    const-string v2, "rrule"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 897
    const-string v2, "rrule"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 902
    :goto_0
    const-string v3, "eventTimezone"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 903
    const-string v3, "eventTimezone"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 909
    :goto_1
    cmp-long v16, v4, v12

    if-nez v16, :cond_3

    cmp-long v6, v6, v14

    if-nez v6, :cond_3

    if-ne v8, v11, :cond_3

    .line 910
    invoke-static {v9, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 911
    invoke-static {v10, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 912
    const-string v2, "dtstart"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 913
    const-string v2, "dtend"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 914
    const-string v2, "duration"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 915
    const-string v2, "allDay"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 916
    const-string v2, "rrule"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 917
    const-string v2, "eventTimezone"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 949
    :cond_0
    :goto_2
    return-void

    .line 899
    :cond_1
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendar/event/CalendarEventModel;->mRrule:Ljava/lang/String;

    goto :goto_0

    .line 905
    :cond_2
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/calendar/event/CalendarEventModel;->mTimezone:Ljava/lang/String;

    goto :goto_1

    .line 921
    :cond_3
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 932
    const/4 v2, 0x3

    move/from16 v0, p4

    if-ne v0, v2, :cond_0

    .line 933
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/calendar/event/CalendarEventModel;->mStart:J

    .line 934
    cmp-long v6, v4, v12

    if-eqz v6, :cond_4

    .line 936
    sub-long v4, v12, v4

    .line 937
    add-long/2addr v2, v4

    .line 939
    :cond_4
    if-eqz v11, :cond_5

    .line 940
    new-instance v4, Lcom/android/calendar/time/Time;

    const-string v5, "UTC"

    invoke-direct {v4, v5}, Lcom/android/calendar/time/Time;-><init>(Ljava/lang/String;)V

    .line 941
    invoke-virtual {v4, v2, v3}, Lcom/android/calendar/time/Time;->set(J)V

    .line 942
    const/4 v2, 0x0

    iput v2, v4, Lcom/android/calendar/time/Time;->hour:I

    .line 943
    const/4 v2, 0x0

    iput v2, v4, Lcom/android/calendar/time/Time;->minute:I

    .line 944
    const/4 v2, 0x0

    iput v2, v4, Lcom/android/calendar/time/Time;->second:I

    .line 945
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Lcom/android/calendar/time/Time;->toMillis(Z)J

    move-result-wide v2

    .line 947
    :cond_5
    const-string v4, "dtstart"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_2
.end method

.method protected constructDefaultEndTime(J)J
    .locals 3

    .prologue
    .line 873
    const-wide/32 v0, 0x36ee80

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public getAttachmentListFromExtras(Lcom/android/calendar/event/EventExtras;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/event/EventExtras;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/calendar/v2/client/service/api/events/Attachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1989
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAutoAddHangout(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 2007
    const/4 v0, 0x0

    return v0
.end method

.method public getCalendarsProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    sget-object v0, Lcom/android/calendar/event/LoadDetailsConstants;->CALENDARS_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method getContentValuesFromModel(Lcom/android/calendar/event/CalendarEventModel;)Landroid/content/ContentValues;
    .locals 12

    .prologue
    .line 1797
    iget-object v6, p1, Lcom/android/calendar/event/CalendarEventModel;->mTitle:Ljava/lang/String;

    .line 1798
    iget-boolean v7, p1, Lcom/android/calendar/event/CalendarEventModel;->mAllDay:Z

    .line 1799
    iget-object v8, p1, Lcom/android/calendar/event/CalendarEventModel;->mRrule:Ljava/lang/String;

    .line 1800
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1802
    iget-wide v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mStart:J

    iget-wide v4, p1, Lcom/android/calendar/event/CalendarEventModel;->mEnd:J

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/calendar/event/EditHelper;->getTimes(Lcom/android/calendar/event/CalendarEventModel;JJ)Lcom/android/calendar/event/EditHelper$TimeInterval;

    move-result-object v0

    .line 1803
    iget-wide v2, v0, Lcom/android/calendar/event/EditHelper$TimeInterval;->startMillis:J

    .line 1804
    iget-wide v4, v0, Lcom/android/calendar/event/EditHelper$TimeInterval;->endMillis:J

    .line 1805
    iget-object v0, v0, Lcom/android/calendar/event/EditHelper$TimeInterval;->timezone:Ljava/lang/String;

    .line 1806
    iget-wide v10, p1, Lcom/android/calendar/event/CalendarEventModel;->mCalendarId:J

    .line 1808
    const-string v1, "calendar_id"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1809
    const-string v1, "eventTimezone"

    invoke-virtual {v9, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1810
    const-string v0, "title"

    invoke-virtual {v9, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1811
    const-string v1, "allDay"

    if-eqz v7, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1812
    const-string v0, "dtstart"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1813
    const-string v0, "rrule"

    invoke-virtual {v9, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1814
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1815
    invoke-virtual {p0, v9, p1}, Lcom/android/calendar/event/EditHelper;->addRecurrenceRule(Landroid/content/ContentValues;Lcom/android/calendar/event/CalendarEventModel;)V

    .line 1820
    :goto_1
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mDescription:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1821
    const-string v0, "description"

    iget-object v1, p1, Lcom/android/calendar/event/CalendarEventModel;->mDescription:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1825
    :goto_2
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mLocation:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mLocation:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1830
    :goto_3
    const-string v1, "eventLocation"

    invoke-virtual {v9, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1832
    const-string v0, "availability"

    iget v1, p1, Lcom/android/calendar/event/CalendarEventModel;->mAvailability:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1833
    const-string v1, "hasAttendeeData"

    iget-boolean v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mHasAttendeeData:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1836
    const-string v1, "accessLevel"

    iget v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mAccessLevel:I

    const/16 v2, 0x64

    if-ne v0, v2, :cond_7

    .line 1837
    const/4 v0, 0x2

    .line 1836
    :goto_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1838
    const-string v0, "eventStatus"

    iget v1, p1, Lcom/android/calendar/event/CalendarEventModel;->mEventStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1839
    invoke-virtual {p1}, Lcom/android/calendar/event/CalendarEventModel;->isEventColorInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1840
    invoke-virtual {p1}, Lcom/android/calendar/event/CalendarEventModel;->getEventColor()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/calendar/event/CalendarEventModel;->getCalendarColor()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mEventColorKey:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 1842
    :cond_0
    const-string v0, "eventColor_index"

    const-string v1, ""

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1850
    :cond_1
    :goto_6
    const-string v1, "hasAlarm"

    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    const/4 v0, 0x1

    :goto_7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1851
    return-object v9

    .line 1811
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1817
    :cond_3
    const-string v1, "duration"

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v9, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1818
    const-string v0, "dtend"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_1

    .line 1823
    :cond_4
    const-string v1, "description"

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v9, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1825
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 1833
    :cond_6
    const/4 v0, 0x0

    goto :goto_4

    .line 1837
    :cond_7
    iget v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mAccessLevel:I

    goto :goto_5

    .line 1845
    :cond_8
    const-string v0, "eventColor_index"

    iget v1, p1, Lcom/android/calendar/event/CalendarEventModel;->mEventColorKey:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_6

    .line 1850
    :cond_9
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getDefaultEventDurationCursor(Landroid/content/Context;)Landroid/content/Loader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2003
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExtendedPropertiesFromModel(Lcom/android/calendar/event/CalendarEventModel;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/event/CalendarEventModel;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1262
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1263
    if-nez p1, :cond_0

    move-object v0, v1

    .line 1293
    :goto_0
    return-object v0

    .line 1267
    :cond_0
    const-string v2, "includeHangout"

    iget-boolean v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mIncludeHangout:Z

    if-eqz v0, :cond_4

    .line 1268
    const-string v0, "1"

    .line 1267
    :goto_1
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1269
    const-string v2, "endTimeUnspecified"

    iget-boolean v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mEndTimeUnspecified:Z

    if-eqz v0, :cond_5

    .line 1270
    const-string v0, "1"

    .line 1269
    :goto_2
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1271
    const-string v2, "secretEvent"

    iget v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mAccessLevel:I

    const/16 v3, 0x64

    if-ne v0, v3, :cond_6

    .line 1272
    const-string v0, "1"

    .line 1271
    :goto_3
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1273
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mICalUid:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1274
    const-string v0, "iCalUid"

    iget-object v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mICalUid:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1275
    const-string v0, "sequenceNumber"

    iget v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mSequence:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1278
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mSyncId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1279
    const-string v0, "userAttendeeStatus"

    const/4 v2, 0x0

    .line 1280
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1279
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1283
    :cond_1
    iget-object v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1284
    const-string v0, "organizer"

    iget-object v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1286
    :cond_2
    iget-wide v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mICalDtStamp:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    .line 1287
    const-string v0, "private:iCalDtStamp"

    iget-wide v2, p1, Lcom/android/calendar/event/CalendarEventModel;->mICalDtStamp:J

    .line 1288
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 1287
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1291
    :cond_3
    const-string v2, "clearDefaultReminders"

    iget-boolean v0, p1, Lcom/android/calendar/event/CalendarEventModel;->mClearDefaultReminders:Z

    if-eqz v0, :cond_7

    .line 1292
    const-string v0, "1"

    .line 1291
    :goto_4
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 1293
    goto :goto_0

    .line 1268
    :cond_4
    const-string v0, "0"

    goto :goto_1

    .line 1270
    :cond_5
    const-string v0, "0"

    goto :goto_2

    .line 1272
    :cond_6
    const-string v0, "0"

    goto :goto_3

    .line 1292
    :cond_7
    const-string v0, "0"

    goto :goto_4
.end method

.method public getExtrasLoader(Landroid/content/Context;Lcom/android/calendar/event/CalendarEventModel;)Landroid/content/Loader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/calendar/event/CalendarEventModel;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/calendar/event/EventExtras;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1969
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIsCalendarSharedColumn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTaskCalendarColor(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 1993
    const/4 v0, 0x0

    return v0
.end method

.method public hasExtrasLoader()Z
    .locals 1

    .prologue
    .line 1965
    const/4 v0, 0x0

    return v0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 202
    instance-of v0, p1, Lcom/android/calendar/AbstractCalendarActivity;

    if-eqz v0, :cond_0

    .line 203
    check-cast p1, Lcom/android/calendar/AbstractCalendarActivity;

    invoke-virtual {p1}, Lcom/android/calendar/AbstractCalendarActivity;->getAsyncQueryService()Lcom/android/calendar/AsyncQueryService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditHelper;->mService:Lcom/android/calendar/AsyncQueryService;

    .line 207
    :goto_0
    return-void

    .line 205
    :cond_0
    new-instance v0, Lcom/android/calendar/AsyncQueryService;

    invoke-direct {v0, p1}, Lcom/android/calendar/AsyncQueryService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/event/EditHelper;->mService:Lcom/android/calendar/AsyncQueryService;

    goto :goto_0
.end method

.method public isThorSupportedForCalendar(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 2012
    const/4 v0, 0x0

    return v0
.end method

.method public itemCanBeSaved(Lcom/android/calendar/event/CalendarEventModel;Lcom/android/calendar/event/CalendarEventModel;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 763
    iget-boolean v1, p0, Lcom/android/calendar/event/EditHelper;->mEventOk:Z

    if-nez v1, :cond_0

    .line 764
    sget-object v1, Lcom/android/calendar/event/EditHelper;->TAG:Ljava/lang/String;

    const-string v2, "Event no longer exists. Event was not saved."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 787
    :goto_0
    return v0

    .line 770
    :cond_0
    if-nez p1, :cond_1

    .line 771
    sget-object v1, Lcom/android/calendar/event/EditHelper;->TAG:Ljava/lang/String;

    const-string v2, "Attempted to save null model."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 774
    :cond_1
    invoke-virtual {p1}, Lcom/android/calendar/event/CalendarEventModel;->isValid()Z

    move-result v1

    if-nez v1, :cond_2

    .line 775
    sget-object v1, Lcom/android/calendar/event/EditHelper;->TAG:Ljava/lang/String;

    const-string v2, "Attempted to save invalid model."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 778
    :cond_2
    if-eqz p2, :cond_3

    invoke-static {p1, p2}, Lcom/android/calendar/event/EditHelper;->isSameEvent(Lcom/android/calendar/event/CalendarEventModel;Lcom/android/calendar/event/CalendarEventModel;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 779
    sget-object v1, Lcom/android/calendar/event/EditHelper;->TAG:Ljava/lang/String;

    const-string v2, "Attempted to update existing event but models didn\'t refer to the same event."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 783
    :cond_3
    iget-object v1, p1, Lcom/android/calendar/event/CalendarEventModel;->mUri:Ljava/lang/String;

    if-eqz v1, :cond_4

    if-nez p2, :cond_4

    .line 784
    sget-object v1, Lcom/android/calendar/event/EditHelper;->TAG:Ljava/lang/String;

    const-string v2, "Existing event but no originalModel provided. Aborting save."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 787
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public loadExtras(Landroid/content/Context;JJ)Lcom/android/calendar/event/EventExtras;
    .locals 1

    .prologue
    .line 1973
    const/4 v0, 0x0

    return-object v0
.end method

.method public saveEvent(Landroid/content/Context;Lcom/android/calendar/event/CalendarEventModel;Lcom/android/calendar/event/CalendarEventModel;I)Lcom/android/calendar/event/EditHelper$SaveEventResult;
    .locals 6

    .prologue
    .line 245
    sget-object v5, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/calendar/event/EditHelper;->saveEvent(Landroid/content/Context;Lcom/android/calendar/event/CalendarEventModel;Lcom/android/calendar/event/CalendarEventModel;ILandroid/net/Uri;)Lcom/android/calendar/event/EditHelper$SaveEventResult;

    move-result-object v0

    return-object v0
.end method

.method protected saveEvent(Landroid/content/Context;Lcom/android/calendar/event/CalendarEventModel;Lcom/android/calendar/event/CalendarEventModel;ILandroid/net/Uri;)Lcom/android/calendar/event/EditHelper$SaveEventResult;
    .locals 37

    .prologue
    .line 252
    const/4 v6, 0x0

    .line 253
    const/16 v18, 0x0

    .line 255
    sget-object v7, Lcom/android/calendar/event/EditHelper;->TAG:Ljava/lang/String;

    const-string v8, "Saving event model: %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p2, v9, v10

    invoke-static {v7, v8, v9}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 257
    invoke-static/range {p1 .. p1}, Lcom/android/calendar/ExtensionsFactory;->getLatencyLogger(Landroid/content/Context;)Lcom/android/calendar/latency/LatencyLogger;

    move-result-object v7

    const/4 v8, 0x4

    invoke-interface {v7, v8}, Lcom/android/calendar/latency/LatencyLogger;->markAt(I)V

    .line 259
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/event/EditHelper;->itemCanBeSaved(Lcom/android/calendar/event/CalendarEventModel;Lcom/android/calendar/event/CalendarEventModel;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 260
    new-instance v6, Lcom/android/calendar/event/EditHelper$SaveEventResult;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lcom/android/calendar/event/EditHelper$SaveEventResult;-><init>(ZLjava/lang/String;Z)V

    .line 683
    :goto_0
    return-object v6

    .line 265
    :cond_0
    const/4 v7, 0x2

    move/from16 v0, p4

    if-ne v0, v7, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/android/calendar/event/CalendarEventModel;->isFirstEventInSeries()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 266
    const/16 p4, 0x3

    .line 269
    :cond_1
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 270
    const/4 v7, -0x1

    .line 272
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/EditHelper;->getContentValuesFromModel(Lcom/android/calendar/event/CalendarEventModel;)Landroid/content/ContentValues;

    move-result-object v35

    .line 273
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/calendar/event/EditHelper;->getEventExtrasForModel(Lcom/android/calendar/event/CalendarEventModel;)Landroid/content/ContentValues;

    move-result-object v16

    .line 276
    new-instance v36, Lcom/android/calendar/event/EditHelper$SyncAdapterUri;

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    move-object/from16 v0, v36

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v8}, Lcom/android/calendar/event/EditHelper$SyncAdapterUri;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    .line 280
    const/4 v8, 0x0

    .line 286
    const/16 v28, 0x0

    .line 287
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/android/calendar/event/CalendarEventModel;->mUri:Ljava/lang/String;

    if-eqz v9, :cond_37

    .line 288
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/calendar/event/CalendarEventModel;->mUri:Ljava/lang/String;

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    .line 289
    new-instance v8, Lcom/android/calendar/event/EditHelper$SyncAdapterUri;

    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-direct {v8, v0, v9}, Lcom/android/calendar/event/EditHelper$SyncAdapterUri;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    move-object/from16 v31, v8

    .line 291
    :goto_1
    if-eqz v31, :cond_f

    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/android/calendar/event/CalendarEventModel;->mId:J

    move-wide/from16 v32, v8

    .line 293
    :goto_2
    if-eqz v31, :cond_4

    .line 294
    move-object/from16 v0, p3

    iget-boolean v8, v0, Lcom/android/calendar/event/CalendarEventModel;->mIsOrganizer:Z

    move-object/from16 v0, p2

    iget-boolean v9, v0, Lcom/android/calendar/event/CalendarEventModel;->mIsOrganizer:Z

    if-eq v8, v9, :cond_2

    .line 295
    sget-object v8, Lcom/android/calendar/event/EditHelper;->TAG:Ljava/lang/String;

    const-string v9, "isOrganizer changing on event edit"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 297
    :cond_2
    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/android/calendar/event/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/android/calendar/event/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 298
    sget-object v8, Lcom/android/calendar/event/EditHelper;->TAG:Ljava/lang/String;

    const-string v9, "organizer changing on event edit"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 300
    :cond_3
    move-object/from16 v0, p3

    iget-boolean v8, v0, Lcom/android/calendar/event/CalendarEventModel;->mIsOrganizer:Z

    move-object/from16 v0, p2

    iput-boolean v8, v0, Lcom/android/calendar/event/CalendarEventModel;->mIsOrganizer:Z

    .line 301
    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/android/calendar/event/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v8, v0, Lcom/android/calendar/event/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    .line 303
    :cond_4
    move-object/from16 v0, p2

    iget-boolean v8, v0, Lcom/android/calendar/event/CalendarEventModel;->mIsOrganizer:Z

    if-nez v8, :cond_5

    .line 304
    const-string v8, "organizer"

    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/android/calendar/event/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    move-object/from16 v0, v35

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :cond_5
    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    .line 310
    if-nez v31, :cond_10

    .line 311
    const-string v6, "hasAttendeeData"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v35

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 312
    const-string v6, "eventStatus"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v35

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 313
    move-object/from16 v0, v35

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 314
    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 316
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v35

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/calendar/event/EditHelper;->addClientGeneratedSyncIdIfSupported(Lcom/android/calendar/event/CalendarEventModel;Landroid/content/ContentValues;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    .line 318
    invoke-virtual/range {v36 .. v36}, Lcom/android/calendar/event/EditHelper$SyncAdapterUri;->getUri()Landroid/net/Uri;

    move-result-object v8

    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 319
    move-object/from16 v0, v35

    invoke-virtual {v8, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 320
    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    move-object/from16 v0, v34

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    const/16 v18, 0x1

    move-object/from16 v30, v6

    .line 454
    :goto_3
    const/4 v6, -0x1

    if-eq v7, v6, :cond_1c

    const/4 v6, 0x1

    move/from16 v29, v6

    .line 456
    :goto_4
    const/4 v6, -0x1

    .line 457
    if-eqz p3, :cond_1d

    .line 458
    move-object/from16 v0, p3

    iget-object v9, v0, Lcom/android/calendar/event/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    .line 459
    move-object/from16 v0, p3

    iget v6, v0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAttendeeStatus:I

    move/from16 v27, v6

    .line 464
    :goto_5
    new-instance v11, Landroid/accounts/Account;

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccountName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccountType:Ljava/lang/String;

    invoke-direct {v11, v6, v8}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    if-eqz v29, :cond_1e

    .line 466
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/calendar/event/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    const/4 v10, 0x1

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarId:J

    move-object/from16 v0, p2

    iget-boolean v14, v0, Lcom/android/calendar/event/CalendarEventModel;->mAllDay:Z

    move-object/from16 v6, v34

    move-object/from16 v15, p1

    invoke-static/range {v6 .. v15}, Lcom/android/calendar/event/EditHelper;->saveRemindersWithBackRef(Ljava/util/ArrayList;ILjava/util/ArrayList;Ljava/util/ArrayList;ZLandroid/accounts/Account;JZLandroid/content/Context;)Z

    .line 474
    :cond_6
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/EditHelper;->getExtendedPropertiesFromModel(Lcom/android/calendar/event/CalendarEventModel;)Ljava/util/Map;

    move-result-object v8

    .line 475
    move-object/from16 v0, v24

    invoke-interface {v8, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 476
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/EditHelper;->getExtendedPropertiesFromModel(Lcom/android/calendar/event/CalendarEventModel;)Ljava/util/Map;

    move-result-object v9

    .line 477
    new-instance v12, Lcom/android/calendar/event/EditHelper$SyncAdapterUri;

    sget-object v6, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    invoke-direct {v12, v6, v10}, Lcom/android/calendar/event/EditHelper$SyncAdapterUri;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    .line 480
    const/4 v10, 0x0

    .line 481
    const-string v6, "com.google"

    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccountType:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 482
    sget-object v10, Lcom/android/calendar/event/EditHelper;->WHITELISTED_PROPERTIES_FOR_GOOGLE_ACCOUNTS:[Ljava/lang/String;

    .line 489
    :cond_7
    :goto_7
    if-eqz v29, :cond_20

    .line 490
    const/4 v11, 0x1

    move-object/from16 v6, v34

    invoke-static/range {v6 .. v12}, Lcom/android/calendar/event/EditHelper;->saveExtendedPropertiesWithBackRef(Ljava/util/ArrayList;ILjava/util/Map;Ljava/util/Map;[Ljava/lang/String;ZLcom/android/calendar/event/EditHelper$SyncAdapterUri;)Z

    .line 497
    :cond_8
    :goto_8
    move-object/from16 v0, p2

    iget-boolean v9, v0, Lcom/android/calendar/event/CalendarEventModel;->mHasAttendeeData:Z

    .line 500
    if-eqz v9, :cond_24

    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAttendeeId:I

    const/4 v8, -0x1

    if-ne v6, v8, :cond_24

    .line 503
    const/4 v6, 0x1

    .line 504
    if-eqz p3, :cond_a

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/calendar/event/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->size()I

    move-result v8

    if-eqz v8, :cond_a

    .line 505
    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/android/calendar/event/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->size()I

    move-result v8

    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/android/calendar/event/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->size()I

    move-result v10

    if-ne v8, v10, :cond_a

    .line 506
    const/4 v8, 0x0

    .line 507
    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/android/calendar/event/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 508
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/calendar/event/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v11, v6}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 509
    const/4 v6, 0x1

    .line 516
    :cond_a
    :goto_9
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    .line 517
    if-eqz v6, :cond_c

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/calendar/event/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    .line 518
    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->size()I

    move-result v6

    if-nez v6, :cond_b

    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/android/calendar/event/CalendarEventModel;->mIsOrganizer:Z

    if-nez v6, :cond_c

    .line 519
    :cond_b
    invoke-static {v8}, Lcom/android/calendar/Utils;->isValidEmail(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 522
    invoke-virtual/range {v35 .. v35}, Landroid/content/ContentValues;->clear()V

    .line 523
    const-string v6, "attendeeEmail"

    move-object/from16 v0, v35

    invoke-virtual {v0, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    const-string v8, "attendeeRelationship"

    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/android/calendar/event/CalendarEventModel;->mIsOrganizer:Z

    if-eqz v6, :cond_21

    .line 525
    const/4 v6, 0x2

    .line 524
    :goto_a
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v35

    invoke-virtual {v0, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 527
    const-string v6, "attendeeType"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v35

    invoke-virtual {v0, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 528
    const-string v8, "attendeeStatus"

    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/android/calendar/event/CalendarEventModel;->mIsOrganizer:Z

    if-eqz v6, :cond_22

    .line 529
    const/4 v6, 0x1

    .line 528
    :goto_b
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v35

    invoke-virtual {v0, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 532
    if-eqz v29, :cond_23

    .line 533
    sget-object v6, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 534
    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 535
    const-string v8, "event_id"

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 541
    :goto_c
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    :cond_c
    :goto_d
    if-eqz v9, :cond_2f

    if-nez v29, :cond_d

    if-eqz v31, :cond_2f

    .line 579
    :cond_d
    invoke-virtual/range {p2 .. p2}, Lcom/android/calendar/event/CalendarEventModel;->getAttendeesString()Ljava/lang/String;

    move-result-object v8

    .line 581
    if-eqz p3, :cond_28

    .line 582
    invoke-virtual/range {p3 .. p3}, Lcom/android/calendar/event/CalendarEventModel;->getAttendeesString()Ljava/lang/String;

    move-result-object v6

    .line 588
    :goto_e
    if-nez v29, :cond_e

    invoke-static {v6, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2f

    .line 592
    :cond_e
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/android/calendar/event/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    .line 593
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 601
    if-nez v29, :cond_2d

    .line 602
    invoke-virtual {v8}, Ljava/util/LinkedList;->clear()V

    .line 603
    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/android/calendar/event/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    .line 604
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 605
    invoke-virtual {v10, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_29

    .line 607
    invoke-virtual {v10, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 291
    :cond_f
    const-wide/16 v8, -0x1

    move-wide/from16 v32, v8

    goto/16 :goto_2

    .line 322
    :cond_10
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/calendar/event/CalendarEventModel;->mRrule:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_11

    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/android/calendar/event/CalendarEventModel;->mRrule:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 324
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    move-object/from16 v3, v35

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/calendar/event/EditHelper;->checkTimeDependentFields(Lcom/android/calendar/event/CalendarEventModel;Lcom/android/calendar/event/CalendarEventModel;Landroid/content/ContentValues;I)V

    .line 325
    invoke-static/range {v28 .. v28}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 326
    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    .line 325
    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    invoke-virtual/range {v31 .. v31}, Lcom/android/calendar/event/EditHelper$SyncAdapterUri;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 328
    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    .line 327
    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/calendar/event/CalendarEventModel;->mSyncId:Ljava/lang/String;

    move-object/from16 v30, v6

    goto/16 :goto_3

    .line 330
    :cond_11
    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/android/calendar/event/CalendarEventModel;->mRrule:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 332
    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalId:J

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-gtz v6, :cond_12

    .line 334
    invoke-static/range {v28 .. v28}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 335
    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    .line 334
    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    invoke-virtual/range {v31 .. v31}, Lcom/android/calendar/event/EditHelper$SyncAdapterUri;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 337
    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    .line 336
    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/calendar/event/CalendarEventModel;->mSyncId:Ljava/lang/String;

    move-object/from16 v30, v6

    goto/16 :goto_3

    .line 342
    :cond_12
    invoke-static/range {v28 .. v28}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalId:J

    .line 344
    move-object/from16 v0, p5

    invoke-static {v0, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 346
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v8, Lcom/android/calendar/event/LoadDetailsConstants;->EVENT_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 349
    new-instance v11, Lcom/android/calendar/event/CalendarEventModel;

    invoke-direct {v11}, Lcom/android/calendar/event/CalendarEventModel;-><init>()V

    .line 354
    invoke-static {v11, v6}, Lcom/android/calendar/event/EditHelper;->setModelFromEventCursor(Lcom/android/calendar/event/CalendarEventModel;Landroid/database/Cursor;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 358
    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalStart:J

    iget-wide v12, v11, Lcom/android/calendar/event/CalendarEventModel;->mStart:J

    cmp-long v6, v8, v12

    if-nez v6, :cond_13

    .line 359
    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    :goto_10
    move-object/from16 v0, v35

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 374
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v35

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/calendar/event/EditHelper;->addClientGeneratedSyncIdIfSupported(Lcom/android/calendar/event/CalendarEventModel;Landroid/content/ContentValues;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    .line 376
    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 377
    invoke-virtual/range {v36 .. v36}, Lcom/android/calendar/event/EditHelper$SyncAdapterUri;->getUri()Landroid/net/Uri;

    move-result-object v8

    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 378
    move-object/from16 v0, v35

    invoke-virtual {v8, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    .line 377
    move-object/from16 v0, v34

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v30, v6

    .line 379
    goto/16 :goto_3

    .line 361
    :cond_13
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalStart:J

    iget-wide v14, v11, Lcom/android/calendar/event/CalendarEventModel;->mDbStart:J

    move-object/from16 v8, p0

    move-object/from16 v9, v34

    move-object v10, v7

    invoke-virtual/range {v8 .. v15}, Lcom/android/calendar/event/EditHelper;->updatePastEvents(Ljava/util/ArrayList;Landroid/net/Uri;Lcom/android/calendar/event/CalendarEventModel;JJ)Ljava/lang/String;

    goto :goto_10

    .line 365
    :cond_14
    sget-object v6, Lcom/android/calendar/event/EditHelper;->TAG:Ljava/lang/String;

    const-string v7, "Inconsistent state: the original event %d is absent for event %d."

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p2

    iget-wide v10, v0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalId:J

    .line 367
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    move-object/from16 v0, p2

    iget-wide v10, v0, Lcom/android/calendar/event/CalendarEventModel;->mId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    .line 365
    invoke-static {v6, v7, v8}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_10

    .line 380
    :cond_15
    const/4 v8, 0x1

    move/from16 v0, p4

    if-ne v0, v8, :cond_17

    .line 383
    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalStart:J

    .line 384
    const-string v8, "original_sync_id"

    move-object/from16 v0, p3

    iget-object v9, v0, Lcom/android/calendar/event/CalendarEventModel;->mSyncId:Ljava/lang/String;

    move-object/from16 v0, v35

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const-string v8, "originalInstanceTime"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v35

    invoke-virtual {v0, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 386
    move-object/from16 v0, p3

    iget-boolean v6, v0, Lcom/android/calendar/event/CalendarEventModel;->mAllDay:Z

    .line 387
    const-string v7, "originalAllDay"

    if-eqz v6, :cond_16

    const/4 v6, 0x1

    :goto_11
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v35

    invoke-virtual {v0, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 388
    const-string v6, "eventStatus"

    move-object/from16 v0, p3

    iget v7, v0, Lcom/android/calendar/event/CalendarEventModel;->mEventStatus:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v35

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 389
    move-object/from16 v0, v35

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 391
    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 393
    invoke-virtual/range {v36 .. v36}, Lcom/android/calendar/event/EditHelper$SyncAdapterUri;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 394
    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 395
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    const/16 v18, 0x1

    .line 397
    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/android/calendar/event/CalendarEventModel;->mSyncId:Ljava/lang/String;

    move-object/from16 v30, v6

    .line 398
    goto/16 :goto_3

    .line 387
    :cond_16
    const/4 v6, 0x0

    goto :goto_11

    .line 398
    :cond_17
    const/4 v8, 0x2

    move/from16 v0, p4

    if-ne v0, v8, :cond_1a

    .line 400
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v35

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/calendar/event/EditHelper;->addClientGeneratedSyncIdIfSupported(Lcom/android/calendar/event/CalendarEventModel;Landroid/content/ContentValues;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v14

    .line 401
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/calendar/event/CalendarEventModel;->mRrule:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 405
    move-object/from16 v0, p2

    iget-wide v10, v0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalStart:J

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/calendar/event/CalendarEventModel;->mDbStart:J

    move-object/from16 v6, p0

    move-object/from16 v7, v34

    move-object/from16 v8, v28

    move-object/from16 v9, p3

    invoke-virtual/range {v6 .. v13}, Lcom/android/calendar/event/EditHelper;->updatePastEvents(Ljava/util/ArrayList;Landroid/net/Uri;Lcom/android/calendar/event/CalendarEventModel;JJ)Ljava/lang/String;

    .line 421
    :cond_18
    :goto_12
    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 422
    const-string v6, "eventStatus"

    move-object/from16 v0, p3

    iget v8, v0, Lcom/android/calendar/event/CalendarEventModel;->mEventStatus:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v35

    invoke-virtual {v0, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 423
    move-object/from16 v0, v35

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 424
    invoke-virtual/range {v36 .. v36}, Lcom/android/calendar/event/EditHelper$SyncAdapterUri;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 425
    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    .line 424
    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    const/16 v18, 0x1

    move-object/from16 v30, v14

    goto/16 :goto_3

    .line 414
    :cond_19
    move-object/from16 v0, p2

    iget-wide v10, v0, Lcom/android/calendar/event/CalendarEventModel;->mOriginalStart:J

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/calendar/event/CalendarEventModel;->mDbStart:J

    move-object/from16 v6, p0

    move-object/from16 v7, v34

    move-object/from16 v8, v28

    move-object/from16 v9, p3

    invoke-virtual/range {v6 .. v13}, Lcom/android/calendar/event/EditHelper;->updatePastEvents(Ljava/util/ArrayList;Landroid/net/Uri;Lcom/android/calendar/event/CalendarEventModel;JJ)Ljava/lang/String;

    move-result-object v6

    .line 416
    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/calendar/event/CalendarEventModel;->mRrule:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/android/calendar/event/CalendarEventModel;->mRrule:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 417
    const-string v7, "rrule"

    move-object/from16 v0, v35

    invoke-virtual {v0, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    .line 427
    :cond_1a
    const/4 v8, 0x3

    move/from16 v0, p4

    if-ne v0, v8, :cond_36

    .line 430
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/calendar/event/CalendarEventModel;->mRrule:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 434
    invoke-static/range {v28 .. v28}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    move-object/from16 v0, v35

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 436
    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 439
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v35

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/calendar/event/EditHelper;->addClientGeneratedSyncIdIfSupported(Lcom/android/calendar/event/CalendarEventModel;Landroid/content/ContentValues;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    .line 440
    invoke-virtual/range {v36 .. v36}, Lcom/android/calendar/event/EditHelper$SyncAdapterUri;->getUri()Landroid/net/Uri;

    move-result-object v8

    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 441
    move-object/from16 v0, v35

    invoke-virtual {v8, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    .line 440
    move-object/from16 v0, v34

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    const/16 v18, 0x1

    move-object/from16 v30, v6

    goto/16 :goto_3

    .line 444
    :cond_1b
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    move-object/from16 v3, v35

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/calendar/event/EditHelper;->checkTimeDependentFields(Lcom/android/calendar/event/CalendarEventModel;Lcom/android/calendar/event/CalendarEventModel;Landroid/content/ContentValues;I)V

    .line 445
    invoke-static/range {v28 .. v28}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 446
    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    .line 445
    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    invoke-virtual/range {v31 .. v31}, Lcom/android/calendar/event/EditHelper$SyncAdapterUri;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 448
    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    .line 447
    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/calendar/event/CalendarEventModel;->mSyncId:Ljava/lang/String;

    move-object/from16 v30, v6

    goto/16 :goto_3

    .line 454
    :cond_1c
    const/4 v6, 0x0

    move/from16 v29, v6

    goto/16 :goto_4

    .line 461
    :cond_1d
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move/from16 v27, v6

    goto/16 :goto_5

    .line 468
    :cond_1e
    if-eqz v31, :cond_6

    .line 469
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarId:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mAllDay:Z

    move/from16 v22, v0

    move-object/from16 v13, v34

    move-wide/from16 v14, v32

    move-object/from16 v17, v9

    move-object/from16 v19, v11

    move-object/from16 v23, p1

    invoke-static/range {v13 .. v23}, Lcom/android/calendar/event/EditHelper;->saveReminders(Ljava/util/ArrayList;JLjava/util/ArrayList;Ljava/util/ArrayList;ZLandroid/accounts/Account;JZLandroid/content/Context;)Z

    goto/16 :goto_6

    .line 483
    :cond_1f
    invoke-static/range {p1 .. p1}, Lcom/android/calendar/timely/ProposeTimeUtil;->isProposeTimeSupported(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "com.google.android.gm.exchange"

    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/calendar/event/CalendarEventModel;->mCalendarAccountType:Ljava/lang/String;

    .line 484
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 487
    sget-object v10, Lcom/android/calendar/event/EventInfoFragment;->PROPOSE_NEW_TIME_EXTENDED_PROPERTIES:[Ljava/lang/String;

    goto/16 :goto_7

    .line 492
    :cond_20
    if-eqz v31, :cond_8

    move-object/from16 v19, v34

    move-wide/from16 v20, v32

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    move/from16 v25, v18

    move-object/from16 v26, v12

    .line 493
    invoke-static/range {v19 .. v26}, Lcom/android/calendar/event/EditHelper;->saveExtendedProperties(Ljava/util/ArrayList;JLjava/util/Map;Ljava/util/Map;[Ljava/lang/String;ZLcom/android/calendar/event/EditHelper$SyncAdapterUri;)Z

    goto/16 :goto_8

    .line 526
    :cond_21
    const/4 v6, 0x1

    goto/16 :goto_a

    .line 530
    :cond_22
    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAttendeeStatus:I

    goto/16 :goto_b

    .line 537
    :cond_23
    const-string v6, "event_id"

    move-object/from16 v0, p2

    iget-wide v10, v0, Lcom/android/calendar/event/CalendarEventModel;->mId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v35

    invoke-virtual {v0, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 538
    sget-object v6, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 539
    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    goto/16 :goto_c

    .line 543
    :cond_24
    if-eqz v9, :cond_25

    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAttendeeStatus:I

    move/from16 v0, v27

    if-eq v6, v0, :cond_25

    .line 545
    sget-object v6, Lcom/android/calendar/event/EditHelper;->TAG:Ljava/lang/String;

    const-string v8, "Setting attendee status to %d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAttendeeStatus:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v10, v11

    invoke-static {v6, v8, v10}, Lcom/android/calendarcommon2/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 546
    sget-object v6, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p2

    iget v8, v0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAttendeeId:I

    int-to-long v10, v8

    invoke-static {v6, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 549
    invoke-virtual/range {v35 .. v35}, Landroid/content/ContentValues;->clear()V

    .line 550
    const-string v8, "attendeeStatus"

    move-object/from16 v0, p2

    iget v10, v0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAttendeeStatus:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v35

    invoke-virtual {v0, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 551
    const-string v8, "event_id"

    move-object/from16 v0, p2

    iget-wide v10, v0, Lcom/android/calendar/event/CalendarEventModel;->mId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v0, v35

    invoke-virtual {v0, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 552
    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 553
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 554
    :cond_25
    if-eqz v9, :cond_c

    if-eqz v29, :cond_c

    .line 556
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    .line 557
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/calendar/event/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->size()I

    move-result v8

    if-eqz v8, :cond_c

    invoke-static {v6}, Lcom/android/calendar/Utils;->isValidEmail(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 560
    invoke-virtual/range {v35 .. v35}, Landroid/content/ContentValues;->clear()V

    .line 561
    const-string v8, "attendeeEmail"

    move-object/from16 v0, v35

    invoke-virtual {v0, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    const-string v8, "attendeeRelationship"

    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/android/calendar/event/CalendarEventModel;->mIsOrganizer:Z

    if-eqz v6, :cond_26

    .line 563
    const/4 v6, 0x2

    .line 562
    :goto_13
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v35

    invoke-virtual {v0, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 565
    const-string v6, "attendeeType"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v35

    invoke-virtual {v0, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 566
    const-string v8, "attendeeStatus"

    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/android/calendar/event/CalendarEventModel;->mIsOrganizer:Z

    if-eqz v6, :cond_27

    .line 567
    const/4 v6, 0x1

    .line 566
    :goto_14
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v35

    invoke-virtual {v0, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 571
    sget-object v6, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 572
    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 573
    const-string v8, "event_id"

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 574
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 564
    :cond_26
    const/4 v6, 0x1

    goto :goto_13

    .line 568
    :cond_27
    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAttendeeStatus:I

    goto :goto_14

    .line 584
    :cond_28
    const-string v6, ""

    goto/16 :goto_e

    .line 610
    :cond_29
    invoke-virtual {v8, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    .line 615
    :cond_2a
    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-lez v6, :cond_2d

    .line 616
    sget-object v6, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    .line 618
    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    new-array v13, v6, [Ljava/lang/String;

    .line 619
    const/4 v6, 0x0

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v13, v6

    .line 620
    const/4 v6, 0x1

    .line 621
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v9, "event_id=? AND attendeeEmail IN ("

    invoke-direct {v14, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 622
    invoke-virtual {v8}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move v8, v6

    :goto_15
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2c

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 623
    const/4 v9, 0x1

    if-le v8, v9, :cond_2b

    .line 624
    const-string v9, ","

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    :cond_2b
    const-string v9, "?"

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    add-int/lit8 v9, v8, 0x1

    aput-object v6, v13, v8

    move v8, v9

    .line 628
    goto :goto_15

    .line 629
    :cond_2c
    const-string v6, ")"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6, v13}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 631
    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    :cond_2d
    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lez v6, :cond_2f

    .line 637
    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_16
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/calendar/event/CalendarEventModel$Attendee;

    .line 638
    invoke-virtual/range {v35 .. v35}, Landroid/content/ContentValues;->clear()V

    .line 639
    const-string v9, "attendeeName"

    invoke-virtual {v6}, Lcom/android/calendar/event/CalendarEventModel$Attendee;->getName()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v35

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    const-string v9, "attendeeEmail"

    invoke-virtual {v6}, Lcom/android/calendar/event/CalendarEventModel$Attendee;->getEmail()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v35

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    const-string v9, "attendeeRelationship"

    invoke-virtual {v6}, Lcom/android/calendar/event/CalendarEventModel$Attendee;->getRelationship()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v35

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 648
    const-string v9, "attendeeType"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v35

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 649
    const-string v9, "attendeeStatus"

    invoke-virtual {v6}, Lcom/android/calendar/event/CalendarEventModel$Attendee;->getStatus()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v35

    invoke-virtual {v0, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 651
    if-eqz v29, :cond_2e

    .line 652
    sget-object v6, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 653
    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 654
    const-string v9, "event_id"

    invoke-virtual {v6, v9, v7}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 660
    :goto_17
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 656
    :cond_2e
    const-string v6, "event_id"

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object/from16 v0, v35

    invoke-virtual {v0, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 657
    sget-object v6, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 658
    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    goto :goto_17

    .line 666
    :cond_2f
    const/4 v11, 0x0

    .line 667
    invoke-virtual/range {v36 .. v36}, Lcom/android/calendar/event/EditHelper$SyncAdapterUri;->used()Z

    move-result v6

    if-nez v6, :cond_31

    if-eqz v31, :cond_30

    .line 668
    invoke-virtual/range {v31 .. v31}, Lcom/android/calendar/event/EditHelper$SyncAdapterUri;->used()Z

    move-result v6

    if-nez v6, :cond_31

    .line 669
    :cond_30
    invoke-virtual {v12}, Lcom/android/calendar/event/EditHelper$SyncAdapterUri;->used()Z

    move-result v6

    if-eqz v6, :cond_32

    .line 670
    :cond_31
    if-eqz v29, :cond_33

    .line 671
    :goto_18
    new-instance v11, Lcom/android/calendar/event/EditHelper$ForceNotifyCompletionListener;

    move-object/from16 v0, p5

    invoke-direct {v11, v0}, Lcom/android/calendar/event/EditHelper$ForceNotifyCompletionListener;-><init>(Landroid/net/Uri;)V

    .line 673
    :cond_32
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/calendar/event/EditHelper;->mService:Lcom/android/calendar/AsyncQueryService;

    invoke-static {}, Lcom/android/calendar/AsyncQueryService;->getNextToken()I

    move-result v7

    const/4 v8, 0x0

    const-string v9, "com.android.calendar"

    const-wide/16 v12, 0x0

    move-object/from16 v10, v34

    invoke-virtual/range {v6 .. v13}, Lcom/android/calendar/AsyncQueryService;->startBatch(ILjava/lang/Object;Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/calendar/AsyncQueryService$OnOperationCompletedListener;J)V

    .line 676
    invoke-static/range {p1 .. p1}, Lcom/android/calendar/ExtensionsFactory;->getActivationLogger(Landroid/content/Context;)Lcom/android/calendar/ActivationLogger;

    move-result-object v6

    .line 677
    if-eqz v29, :cond_34

    .line 678
    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    invoke-interface {v6, v7}, Lcom/android/calendar/ActivationLogger;->userCreatedNewEvent(Ljava/lang/String;)V

    .line 683
    :goto_19
    new-instance v6, Lcom/android/calendar/event/EditHelper$SaveEventResult;

    const/4 v7, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-direct {v6, v7, v0, v1}, Lcom/android/calendar/event/EditHelper$SaveEventResult;-><init>(ZLjava/lang/String;Z)V

    goto/16 :goto_0

    :cond_33
    move-object/from16 p5, v28

    .line 670
    goto :goto_18

    .line 680
    :cond_34
    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    invoke-interface {v6, v7}, Lcom/android/calendar/ActivationLogger;->userModifiedEvent(Ljava/lang/String;)V

    goto :goto_19

    :cond_35
    move v6, v8

    goto/16 :goto_9

    :cond_36
    move-object/from16 v30, v6

    goto/16 :goto_3

    :cond_37
    move-object/from16 v31, v8

    goto/16 :goto_1
.end method

.method public setCalendarFromDefaultEventDuration(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;Landroid/database/Cursor;)Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;
    .locals 0

    .prologue
    .line 1999
    return-object p1
.end method

.method public updatePastEvents(Ljava/util/ArrayList;Landroid/net/Uri;Lcom/android/calendar/event/CalendarEventModel;JJ)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/net/Uri;",
            "Lcom/android/calendar/event/CalendarEventModel;",
            "JJ)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1035
    new-instance v1, Lcom/android/calendarcommon2/EventRecurrence;

    invoke-direct {v1}, Lcom/android/calendarcommon2/EventRecurrence;-><init>()V

    .line 1036
    iget-object v0, p3, Lcom/android/calendar/event/CalendarEventModel;->mRrule:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/calendarcommon2/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 1038
    new-instance v8, Lcom/android/calendarcommon2/EventRecurrence;

    invoke-direct {v8}, Lcom/android/calendarcommon2/EventRecurrence;-><init>()V

    .line 1040
    iget-object v6, p3, Lcom/android/calendar/event/CalendarEventModel;->mTimezone:Ljava/lang/String;

    iget-boolean v7, p3, Lcom/android/calendar/event/CalendarEventModel;->mAllDay:Z

    move-wide/from16 v2, p6

    move-wide v4, p4

    invoke-static/range {v1 .. v8}, Lcom/android/calendar/event/EditHelper;->constrainRecurrenceToTimeframe(Lcom/android/calendarcommon2/EventRecurrence;JJLjava/lang/String;ZLcom/android/calendarcommon2/EventRecurrence;)V

    .line 1044
    invoke-static {p2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v2, "rrule"

    .line 1045
    invoke-virtual {v1}, Lcom/android/calendarcommon2/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "dtstart"

    .line 1046
    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1047
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 1044
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1049
    invoke-virtual {v8}, Lcom/android/calendarcommon2/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
