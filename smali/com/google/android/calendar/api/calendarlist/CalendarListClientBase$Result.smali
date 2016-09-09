.class public Lcom/google/android/calendar/api/calendarlist/CalendarListClientBase$Result;
.super Ljava/lang/Object;
.source "CalendarListClientBase.java"

# interfaces
.implements Lcom/google/android/calendar/api/calendarlist/CalendarListClient$CreateResult;
.implements Lcom/google/android/calendar/api/calendarlist/CalendarListClient$GenericResult;
.implements Lcom/google/android/calendar/api/calendarlist/CalendarListClient$ListResult;
.implements Lcom/google/android/calendar/api/calendarlist/CalendarListClient$ReadResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/api/calendarlist/CalendarListClientBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Result"
.end annotation


# instance fields
.field private final mCalendarListEntries:[Lcom/google/android/calendar/api/calendarlist/CalendarListEntry;

.field private final mCalendarListEntry:Lcom/google/android/calendar/api/calendarlist/CalendarListEntry;

.field private final mCount:I

.field private final mDescriptor:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

.field private final mStatus:Lcom/google/android/gms/common/api/Status;


# direct methods
.method private constructor <init>(IILcom/google/android/calendar/api/calendarlist/CalendarDescriptor;Lcom/google/android/calendar/api/calendarlist/CalendarListEntry;[Lcom/google/android/calendar/api/calendarlist/CalendarListEntry;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p2, p0, Lcom/google/android/calendar/api/calendarlist/CalendarListClientBase$Result;->mCount:I

    .line 48
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/calendar/api/calendarlist/CalendarListClientBase$Result;->mStatus:Lcom/google/android/gms/common/api/Status;

    .line 49
    iput-object p3, p0, Lcom/google/android/calendar/api/calendarlist/CalendarListClientBase$Result;->mDescriptor:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    .line 50
    iput-object p4, p0, Lcom/google/android/calendar/api/calendarlist/CalendarListClientBase$Result;->mCalendarListEntry:Lcom/google/android/calendar/api/calendarlist/CalendarListEntry;

    .line 51
    iput-object p5, p0, Lcom/google/android/calendar/api/calendarlist/CalendarListClientBase$Result;->mCalendarListEntries:[Lcom/google/android/calendar/api/calendarlist/CalendarListEntry;

    .line 52
    return-void
.end method

.method synthetic constructor <init>(IILcom/google/android/calendar/api/calendarlist/CalendarDescriptor;Lcom/google/android/calendar/api/calendarlist/CalendarListEntry;[Lcom/google/android/calendar/api/calendarlist/CalendarListEntry;Lcom/google/android/calendar/api/calendarlist/CalendarListClientBase$1;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct/range {p0 .. p5}, Lcom/google/android/calendar/api/calendarlist/CalendarListClientBase$Result;-><init>(IILcom/google/android/calendar/api/calendarlist/CalendarDescriptor;Lcom/google/android/calendar/api/calendarlist/CalendarListEntry;[Lcom/google/android/calendar/api/calendarlist/CalendarListEntry;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/calendar/api/calendarlist/CalendarListClientBase$Result;->mCount:I

    .line 56
    iput-object v1, p0, Lcom/google/android/calendar/api/calendarlist/CalendarListClientBase$Result;->mDescriptor:Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;

    .line 57
    iput-object v1, p0, Lcom/google/android/calendar/api/calendarlist/CalendarListClientBase$Result;->mCalendarListEntry:Lcom/google/android/calendar/api/calendarlist/CalendarListEntry;

    .line 58
    iput-object v1, p0, Lcom/google/android/calendar/api/calendarlist/CalendarListClientBase$Result;->mCalendarListEntries:[Lcom/google/android/calendar/api/calendarlist/CalendarListEntry;

    .line 59
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x8

    invoke-static {p1}, Lcom/google/common/base/Throwables;->getStackTraceAsString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/calendar/api/calendarlist/CalendarListClientBase$Result;->mStatus:Lcom/google/android/gms/common/api/Status;

    .line 60
    return-void
.end method


# virtual methods
.method public getCalendarListEntry()Lcom/google/android/calendar/api/calendarlist/CalendarListEntry;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/calendar/api/calendarlist/CalendarListClientBase$Result;->mCalendarListEntry:Lcom/google/android/calendar/api/calendarlist/CalendarListEntry;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/calendar/api/calendarlist/CalendarListClientBase$Result;->mStatus:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
