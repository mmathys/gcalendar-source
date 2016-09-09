.class abstract Lcom/google/android/calendar/api/calendarlist/CalendarListClientBase;
.super Ljava/lang/Object;
.source "CalendarListClientBase.java"

# interfaces
.implements Lcom/google/android/calendar/api/calendarlist/CalendarListClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/api/calendarlist/CalendarListClientBase$Result;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mApi:Lcom/google/android/calendar/api/CrudApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/calendar/api/CrudApi",
            "<",
            "Lcom/google/android/calendar/api/calendarlist/CalendarListEntry;",
            "Lcom/google/android/calendar/api/calendarlist/CalendarListEntryModifications;",
            "Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;",
            "Lcom/google/android/calendar/api/calendarlist/CalendarListFilterOptions;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/google/android/calendar/api/calendarlist/CalendarListClientBase;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/calendar/api/calendarlist/CalendarListClientBase;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/calendar/api/CrudApi;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/calendar/api/CrudApi",
            "<",
            "Lcom/google/android/calendar/api/calendarlist/CalendarListEntry;",
            "Lcom/google/android/calendar/api/calendarlist/CalendarListEntryModifications;",
            "Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;",
            "Lcom/google/android/calendar/api/calendarlist/CalendarListFilterOptions;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/CrudApi;

    iput-object v0, p0, Lcom/google/android/calendar/api/calendarlist/CalendarListClientBase;->mApi:Lcom/google/android/calendar/api/CrudApi;

    .line 93
    return-void
.end method


# virtual methods
.method protected synchronousRead(Lcom/google/android/calendar/api/calendarlist/CalendarDescriptor;)Lcom/google/android/calendar/api/calendarlist/CalendarListClient$ReadResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 96
    iget-object v0, p0, Lcom/google/android/calendar/api/calendarlist/CalendarListClientBase;->mApi:Lcom/google/android/calendar/api/CrudApi;

    invoke-interface {v0, p1}, Lcom/google/android/calendar/api/CrudApi;->read(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/calendar/api/calendarlist/CalendarListEntry;

    .line 97
    new-instance v0, Lcom/google/android/calendar/api/calendarlist/CalendarListClientBase$Result;

    if-eqz v4, :cond_1

    move v1, v2

    .line 98
    :goto_0
    if-eqz v4, :cond_0

    .line 99
    const/4 v2, 0x1

    :cond_0
    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/calendar/api/calendarlist/CalendarListClientBase$Result;-><init>(IILcom/google/android/calendar/api/calendarlist/CalendarDescriptor;Lcom/google/android/calendar/api/calendarlist/CalendarListEntry;[Lcom/google/android/calendar/api/calendarlist/CalendarListEntry;Lcom/google/android/calendar/api/calendarlist/CalendarListClientBase$1;)V

    .line 97
    return-object v0

    .line 98
    :cond_1
    const/16 v1, 0xd

    goto :goto_0
.end method
