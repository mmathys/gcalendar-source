.class public Lcom/android/calendar/CalendarClientLogger;
.super Ljava/lang/Object;
.source "CalendarClientLogger.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCalendarClearcutLogger:Lcom/google/android/calendar/loggers/CalendarClearcutLogger;

.field private mClearcutLogger:Lcom/google/android/gms/clearcut/ClearcutLogger;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/android/calendar/CalendarClientLogger;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/CalendarClientLogger;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/calendar/CalendarClientLogger;->mContext:Landroid/content/Context;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 42
    sget-object v0, Lcom/android/calendar/CalendarClientLogger;->TAG:Ljava/lang/String;

    const-string v1, "Expecting application context."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarClientLogger;->mContext:Landroid/content/Context;

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/CalendarClientLogger;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/calendar/loggers/CalendarClearcutLogger;->getInstance(Landroid/content/Context;)Lcom/google/android/calendar/loggers/CalendarClearcutLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarClientLogger;->mCalendarClearcutLogger:Lcom/google/android/calendar/loggers/CalendarClearcutLogger;

    .line 46
    new-instance v0, Lcom/google/android/gms/clearcut/ClearcutLogger;

    iget-object v1, p0, Lcom/android/calendar/CalendarClientLogger;->mContext:Landroid/content/Context;

    const-string v2, "CALENDAR_CLIENT"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/clearcut/ClearcutLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarClientLogger;->mClearcutLogger:Lcom/google/android/gms/clearcut/ClearcutLogger;

    .line 47
    return-void
.end method

.method private getClientExtensionProto(ILjava/lang/String;Ljava/lang/String;)Lcom/google/calendar/client/events/logging/nano/CalendarClientEventsExtension;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 537
    new-instance v0, Lcom/google/calendar/client/events/logging/nano/CalendarClientEventsExtension;

    invoke-direct {v0}, Lcom/google/calendar/client/events/logging/nano/CalendarClientEventsExtension;-><init>()V

    .line 539
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;

    iput-object v1, v0, Lcom/google/calendar/client/events/logging/nano/CalendarClientEventsExtension;->events:[Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;

    .line 540
    iget-object v1, v0, Lcom/google/calendar/client/events/logging/nano/CalendarClientEventsExtension;->events:[Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;

    new-instance v2, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;

    invoke-direct {v2}, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;-><init>()V

    aput-object v2, v1, v3

    .line 541
    iget-object v1, v0, Lcom/google/calendar/client/events/logging/nano/CalendarClientEventsExtension;->events:[Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;

    aget-object v1, v1, v3

    iput p1, v1, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->logEventType:I

    .line 543
    iget-object v1, v0, Lcom/google/calendar/client/events/logging/nano/CalendarClientEventsExtension;->events:[Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;

    aget-object v1, v1, v3

    new-instance v2, Lcom/google/calendar/client/events/logging/nano/CalendarEventInfo;

    invoke-direct {v2}, Lcom/google/calendar/client/events/logging/nano/CalendarEventInfo;-><init>()V

    iput-object v2, v1, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->calendarEvent:Lcom/google/calendar/client/events/logging/nano/CalendarEventInfo;

    .line 544
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 545
    iget-object v1, v0, Lcom/google/calendar/client/events/logging/nano/CalendarClientEventsExtension;->events:[Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;

    aget-object v1, v1, v3

    iget-object v1, v1, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->calendarEvent:Lcom/google/calendar/client/events/logging/nano/CalendarEventInfo;

    iput-object p2, v1, Lcom/google/calendar/client/events/logging/nano/CalendarEventInfo;->calendarEventId:Ljava/lang/String;

    .line 547
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 548
    iget-object v1, v0, Lcom/google/calendar/client/events/logging/nano/CalendarClientEventsExtension;->events:[Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;

    aget-object v1, v1, v3

    iget-object v1, v1, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->calendarEvent:Lcom/google/calendar/client/events/logging/nano/CalendarEventInfo;

    iput-object p3, v1, Lcom/google/calendar/client/events/logging/nano/CalendarEventInfo;->calendarEventReference:Ljava/lang/String;

    .line 551
    :cond_1
    return-object v0
.end method

.method private getFindTimeClientExtensionProto(ILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/calendar/client/events/logging/nano/CalendarClientEventsExtension;
    .locals 5

    .prologue
    const/high16 v4, -0x80000000

    const/4 v3, 0x0

    .line 444
    invoke-direct {p0, p1, p6, p7}, Lcom/android/calendar/CalendarClientLogger;->getClientExtensionProto(ILjava/lang/String;Ljava/lang/String;)Lcom/google/calendar/client/events/logging/nano/CalendarClientEventsExtension;

    move-result-object v0

    .line 447
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 448
    iget-object v1, v0, Lcom/google/calendar/client/events/logging/nano/CalendarClientEventsExtension;->events:[Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;

    aget-object v1, v1, v3

    new-instance v2, Lcom/google/calendar/client/events/logging/nano/ServiceResponseId;

    invoke-direct {v2}, Lcom/google/calendar/client/events/logging/nano/ServiceResponseId;-><init>()V

    iput-object v2, v1, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->serviceResponseId:Lcom/google/calendar/client/events/logging/nano/ServiceResponseId;

    .line 449
    iget-object v1, v0, Lcom/google/calendar/client/events/logging/nano/CalendarClientEventsExtension;->events:[Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;

    aget-object v1, v1, v3

    iget-object v1, v1, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->serviceResponseId:Lcom/google/calendar/client/events/logging/nano/ServiceResponseId;

    iput-object p2, v1, Lcom/google/calendar/client/events/logging/nano/ServiceResponseId;->suggestTimeResponseId:Ljava/lang/String;

    .line 451
    :cond_0
    if-ne p3, v4, :cond_1

    if-eqz p4, :cond_2

    .line 452
    :cond_1
    iget-object v1, v0, Lcom/google/calendar/client/events/logging/nano/CalendarClientEventsExtension;->events:[Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;

    aget-object v1, v1, v3

    new-instance v2, Lcom/google/calendar/client/events/logging/nano/TimeSuggestionViewInfo;

    invoke-direct {v2}, Lcom/google/calendar/client/events/logging/nano/TimeSuggestionViewInfo;-><init>()V

    iput-object v2, v1, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->timeSuggestionViewInfo:Lcom/google/calendar/client/events/logging/nano/TimeSuggestionViewInfo;

    .line 454
    :cond_2
    if-eq p3, v4, :cond_3

    .line 455
    iget-object v1, v0, Lcom/google/calendar/client/events/logging/nano/CalendarClientEventsExtension;->events:[Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;

    aget-object v1, v1, v3

    iget-object v1, v1, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->timeSuggestionViewInfo:Lcom/google/calendar/client/events/logging/nano/TimeSuggestionViewInfo;

    .line 456
    iput p3, v1, Lcom/google/calendar/client/events/logging/nano/TimeSuggestionViewInfo;->numBestSuggestions:I

    .line 458
    :cond_3
    if-eqz p4, :cond_4

    .line 459
    iget-object v1, v0, Lcom/google/calendar/client/events/logging/nano/CalendarClientEventsExtension;->events:[Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;

    aget-object v1, v1, v3

    iget-object v1, v1, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->timeSuggestionViewInfo:Lcom/google/calendar/client/events/logging/nano/TimeSuggestionViewInfo;

    .line 460
    iput-boolean p4, v1, Lcom/google/calendar/client/events/logging/nano/TimeSuggestionViewInfo;->suggestionsForRecurringEvent:Z

    .line 462
    :cond_4
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 463
    iget-object v1, v0, Lcom/google/calendar/client/events/logging/nano/CalendarClientEventsExtension;->events:[Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;

    aget-object v1, v1, v3

    new-instance v2, Lcom/google/calendar/client/events/logging/nano/TimeSuggestionInfo;

    invoke-direct {v2}, Lcom/google/calendar/client/events/logging/nano/TimeSuggestionInfo;-><init>()V

    iput-object v2, v1, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->timeSuggestionInfo:Lcom/google/calendar/client/events/logging/nano/TimeSuggestionInfo;

    .line 464
    iget-object v1, v0, Lcom/google/calendar/client/events/logging/nano/CalendarClientEventsExtension;->events:[Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;

    aget-object v1, v1, v3

    iget-object v1, v1, Lcom/google/calendar/client/events/logging/nano/CalendarClientLogEvent;->timeSuggestionInfo:Lcom/google/calendar/client/events/logging/nano/TimeSuggestionInfo;

    iput-object p5, v1, Lcom/google/calendar/client/events/logging/nano/TimeSuggestionInfo;->suggestionToken:Ljava/lang/String;

    .line 467
    :cond_5
    return-object v0
.end method


# virtual methods
.method public logEventCreated(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)V
    .locals 3

    .prologue
    .line 409
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/calendar/CalendarClientLogger;->getClientExtensionProto(ILjava/lang/String;Ljava/lang/String;)Lcom/google/calendar/client/events/logging/nano/CalendarClientEventsExtension;

    move-result-object v0

    .line 411
    iget-object v1, p0, Lcom/android/calendar/CalendarClientLogger;->mCalendarClearcutLogger:Lcom/google/android/calendar/loggers/CalendarClearcutLogger;

    iget-object v2, p0, Lcom/android/calendar/CalendarClientLogger;->mClearcutLogger:Lcom/google/android/gms/clearcut/ClearcutLogger;

    .line 412
    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/clearcut/ClearcutLogger;->newEvent([B)Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;

    move-result-object v0

    .line 411
    invoke-virtual {v1, v0, p3}, Lcom/google/android/calendar/loggers/CalendarClearcutLogger;->logEvent(Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;Landroid/accounts/Account;)V

    .line 413
    return-void
.end method

.method public logEventUpdated(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)V
    .locals 3

    .prologue
    .line 420
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Lcom/android/calendar/CalendarClientLogger;->getClientExtensionProto(ILjava/lang/String;Ljava/lang/String;)Lcom/google/calendar/client/events/logging/nano/CalendarClientEventsExtension;

    move-result-object v0

    .line 422
    iget-object v1, p0, Lcom/android/calendar/CalendarClientLogger;->mCalendarClearcutLogger:Lcom/google/android/calendar/loggers/CalendarClearcutLogger;

    iget-object v2, p0, Lcom/android/calendar/CalendarClientLogger;->mClearcutLogger:Lcom/google/android/gms/clearcut/ClearcutLogger;

    .line 423
    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/clearcut/ClearcutLogger;->newEvent([B)Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;

    move-result-object v0

    .line 422
    invoke-virtual {v1, v0, p3}, Lcom/google/android/calendar/loggers/CalendarClearcutLogger;->logEvent(Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;Landroid/accounts/Account;)V

    .line 424
    return-void
.end method

.method public logFindTimeButtonClicked(Ljava/lang/String;Landroid/accounts/Account;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 108
    const/4 v1, 0x4

    const/high16 v3, -0x80000000

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, v2

    move-object v6, v2

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/calendar/CalendarClientLogger;->getFindTimeClientExtensionProto(ILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/calendar/client/events/logging/nano/CalendarClientEventsExtension;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/android/calendar/CalendarClientLogger;->mCalendarClearcutLogger:Lcom/google/android/calendar/loggers/CalendarClearcutLogger;

    iget-object v2, p0, Lcom/android/calendar/CalendarClientLogger;->mClearcutLogger:Lcom/google/android/gms/clearcut/ClearcutLogger;

    .line 117
    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/clearcut/ClearcutLogger;->newEvent([B)Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;

    move-result-object v0

    .line 116
    invoke-virtual {v1, v0, p2}, Lcom/google/android/calendar/loggers/CalendarClearcutLogger;->logEvent(Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;Landroid/accounts/Account;)V

    .line 118
    return-void
.end method

.method public logFindTimeButtonHidden(Ljava/lang/String;Landroid/accounts/Account;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 210
    const/16 v1, 0x10

    const/high16 v3, -0x80000000

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, v2

    move-object v6, v2

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/calendar/CalendarClientLogger;->getFindTimeClientExtensionProto(ILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/calendar/client/events/logging/nano/CalendarClientEventsExtension;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lcom/android/calendar/CalendarClientLogger;->mCalendarClearcutLogger:Lcom/google/android/calendar/loggers/CalendarClearcutLogger;

    iget-object v2, p0, Lcom/android/calendar/CalendarClientLogger;->mClearcutLogger:Lcom/google/android/gms/clearcut/ClearcutLogger;

    .line 219
    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/clearcut/ClearcutLogger;->newEvent([B)Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;

    move-result-object v0

    .line 218
    invoke-virtual {v1, v0, p2}, Lcom/google/android/calendar/loggers/CalendarClearcutLogger;->logEvent(Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;Landroid/accounts/Account;)V

    .line 220
    return-void
.end method

.method public logFindTimeButtonShown(Ljava/lang/String;Landroid/accounts/Account;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 194
    const/4 v1, 0x3

    const/high16 v3, -0x80000000

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, v2

    move-object v6, v2

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/calendar/CalendarClientLogger;->getFindTimeClientExtensionProto(ILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/calendar/client/events/logging/nano/CalendarClientEventsExtension;

    move-result-object v0

    .line 202
    iget-object v1, p0, Lcom/android/calendar/CalendarClientLogger;->mCalendarClearcutLogger:Lcom/google/android/calendar/loggers/CalendarClearcutLogger;

    iget-object v2, p0, Lcom/android/calendar/CalendarClientLogger;->mClearcutLogger:Lcom/google/android/gms/clearcut/ClearcutLogger;

    .line 203
    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/clearcut/ClearcutLogger;->newEvent([B)Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;

    move-result-object v0

    .line 202
    invoke-virtual {v1, v0, p2}, Lcom/google/android/calendar/loggers/CalendarClearcutLogger;->logEvent(Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;Landroid/accounts/Account;)V

    .line 204
    return-void
.end method

.method public logFindTimeFiltersChanged(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 92
    const/16 v1, 0xb

    const/high16 v3, -0x80000000

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v6, v5

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/calendar/CalendarClientLogger;->getFindTimeClientExtensionProto(ILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/calendar/client/events/logging/nano/CalendarClientEventsExtension;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/android/calendar/CalendarClientLogger;->mCalendarClearcutLogger:Lcom/google/android/calendar/loggers/CalendarClearcutLogger;

    iget-object v2, p0, Lcom/android/calendar/CalendarClientLogger;->mClearcutLogger:Lcom/google/android/gms/clearcut/ClearcutLogger;

    .line 101
    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/clearcut/ClearcutLogger;->newEvent([B)Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;

    move-result-object v0

    .line 100
    invoke-virtual {v1, v0, p3}, Lcom/google/android/calendar/loggers/CalendarClearcutLogger;->logEvent(Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;Landroid/accounts/Account;)V

    .line 102
    return-void
.end method

.method public logFindTimeGridViewCustomTimeAccepted(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 178
    const/16 v1, 0xa

    const/high16 v3, -0x80000000

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v6, v5

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/calendar/CalendarClientLogger;->getFindTimeClientExtensionProto(ILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/calendar/client/events/logging/nano/CalendarClientEventsExtension;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lcom/android/calendar/CalendarClientLogger;->mCalendarClearcutLogger:Lcom/google/android/calendar/loggers/CalendarClearcutLogger;

    iget-object v2, p0, Lcom/android/calendar/CalendarClientLogger;->mClearcutLogger:Lcom/google/android/gms/clearcut/ClearcutLogger;

    .line 187
    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/clearcut/ClearcutLogger;->newEvent([B)Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;

    move-result-object v0

    .line 186
    invoke-virtual {v1, v0, p3}, Lcom/google/android/calendar/loggers/CalendarClearcutLogger;->logEvent(Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;Landroid/accounts/Account;)V

    .line 188
    return-void
.end method

.method public logFindTimeGridViewOpened(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)V
    .locals 8

    .prologue
    .line 143
    const/16 v1, 0x8

    const/high16 v3, -0x80000000

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v5, p3

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/calendar/CalendarClientLogger;->getFindTimeClientExtensionProto(ILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/calendar/client/events/logging/nano/CalendarClientEventsExtension;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lcom/android/calendar/CalendarClientLogger;->mCalendarClearcutLogger:Lcom/google/android/calendar/loggers/CalendarClearcutLogger;

    iget-object v2, p0, Lcom/android/calendar/CalendarClientLogger;->mClearcutLogger:Lcom/google/android/gms/clearcut/ClearcutLogger;

    .line 152
    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/clearcut/ClearcutLogger;->newEvent([B)Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;

    move-result-object v0

    .line 151
    invoke-virtual {v1, v0, p4}, Lcom/google/android/calendar/loggers/CalendarClearcutLogger;->logEvent(Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;Landroid/accounts/Account;)V

    .line 153
    return-void
.end method

.method public logFindTimeGridViewSuggestionAccepted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)V
    .locals 8

    .prologue
    .line 161
    const/16 v1, 0x9

    const/high16 v3, -0x80000000

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v5, p3

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/calendar/CalendarClientLogger;->getFindTimeClientExtensionProto(ILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/calendar/client/events/logging/nano/CalendarClientEventsExtension;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lcom/android/calendar/CalendarClientLogger;->mCalendarClearcutLogger:Lcom/google/android/calendar/loggers/CalendarClearcutLogger;

    iget-object v2, p0, Lcom/android/calendar/CalendarClientLogger;->mClearcutLogger:Lcom/google/android/gms/clearcut/ClearcutLogger;

    .line 170
    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/clearcut/ClearcutLogger;->newEvent([B)Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;

    move-result-object v0

    .line 169
    invoke-virtual {v1, v0, p4}, Lcom/google/android/calendar/loggers/CalendarClearcutLogger;->logEvent(Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;Landroid/accounts/Account;)V

    .line 171
    return-void
.end method

.method public logFindTimeShowMoreClicked(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 125
    const/4 v1, 0x7

    const/high16 v3, -0x80000000

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v6, v5

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/calendar/CalendarClientLogger;->getFindTimeClientExtensionProto(ILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/calendar/client/events/logging/nano/CalendarClientEventsExtension;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/android/calendar/CalendarClientLogger;->mCalendarClearcutLogger:Lcom/google/android/calendar/loggers/CalendarClearcutLogger;

    iget-object v2, p0, Lcom/android/calendar/CalendarClientLogger;->mClearcutLogger:Lcom/google/android/gms/clearcut/ClearcutLogger;

    .line 134
    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/clearcut/ClearcutLogger;->newEvent([B)Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;

    move-result-object v0

    .line 133
    invoke-virtual {v1, v0, p3}, Lcom/google/android/calendar/loggers/CalendarClearcutLogger;->logEvent(Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;Landroid/accounts/Account;)V

    .line 135
    return-void
.end method

.method public logFindTimeSuggestionViewShown(Ljava/lang/String;Ljava/lang/String;IZLandroid/accounts/Account;)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 57
    const/4 v1, 0x5

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, v5

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/calendar/CalendarClientLogger;->getFindTimeClientExtensionProto(ILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/calendar/client/events/logging/nano/CalendarClientEventsExtension;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/android/calendar/CalendarClientLogger;->mCalendarClearcutLogger:Lcom/google/android/calendar/loggers/CalendarClearcutLogger;

    iget-object v2, p0, Lcom/android/calendar/CalendarClientLogger;->mClearcutLogger:Lcom/google/android/gms/clearcut/ClearcutLogger;

    .line 66
    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/clearcut/ClearcutLogger;->newEvent([B)Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;

    move-result-object v0

    .line 65
    invoke-virtual {v1, v0, p5}, Lcom/google/android/calendar/loggers/CalendarClearcutLogger;->logEvent(Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;Landroid/accounts/Account;)V

    .line 67
    return-void
.end method

.method public logFindTimeSuggestionViewSuggestionAccepted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)V
    .locals 8

    .prologue
    .line 75
    const/4 v1, 0x6

    const/high16 v3, -0x80000000

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v5, p3

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/calendar/CalendarClientLogger;->getFindTimeClientExtensionProto(ILjava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/calendar/client/events/logging/nano/CalendarClientEventsExtension;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/android/calendar/CalendarClientLogger;->mCalendarClearcutLogger:Lcom/google/android/calendar/loggers/CalendarClearcutLogger;

    iget-object v2, p0, Lcom/android/calendar/CalendarClientLogger;->mClearcutLogger:Lcom/google/android/gms/clearcut/ClearcutLogger;

    .line 84
    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/clearcut/ClearcutLogger;->newEvent([B)Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;

    move-result-object v0

    .line 83
    invoke-virtual {v1, v0, p4}, Lcom/google/android/calendar/loggers/CalendarClearcutLogger;->logEvent(Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;Landroid/accounts/Account;)V

    .line 85
    return-void
.end method
