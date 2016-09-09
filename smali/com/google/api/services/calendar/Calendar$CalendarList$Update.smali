.class public Lcom/google/api/services/calendar/Calendar$CalendarList$Update;
.super Lcom/google/api/services/calendar/CalendarRequest;
.source "Calendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/calendar/Calendar$CalendarList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Update"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/calendar/CalendarRequest",
        "<",
        "Lcom/google/api/services/calendar/model/CalendarListEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private calendarId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private supportsAllDayReminders:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/api/services/calendar/Calendar$CalendarList;


# direct methods
.method protected constructor <init>(Lcom/google/api/services/calendar/Calendar$CalendarList;Ljava/lang/String;Lcom/google/api/services/calendar/model/CalendarListEntry;)V
    .locals 6

    .prologue
    .line 2137
    iput-object p1, p0, Lcom/google/api/services/calendar/Calendar$CalendarList$Update;->this$1:Lcom/google/api/services/calendar/Calendar$CalendarList;

    .line 2138
    iget-object v1, p1, Lcom/google/api/services/calendar/Calendar$CalendarList;->this$0:Lcom/google/api/services/calendar/Calendar;

    const-string v2, "PUT"

    const-string v3, "users/me/calendarList/{calendarId}"

    const-class v5, Lcom/google/api/services/calendar/model/CalendarListEntry;

    move-object v0, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/calendar/CalendarRequest;-><init>(Lcom/google/api/services/calendar/Calendar;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 2139
    const-string v0, "Required parameter calendarId must be specified."

    invoke-static {p2, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/calendar/Calendar$CalendarList$Update;->calendarId:Ljava/lang/String;

    .line 2140
    return-void
.end method


# virtual methods
.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .locals 1

    .prologue
    .line 2117
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/Calendar$CalendarList$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$CalendarList$Update;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 1

    .prologue
    .line 2117
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/Calendar$CalendarList$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$CalendarList$Update;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 2117
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/Calendar$CalendarList$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$CalendarList$Update;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$CalendarList$Update;
    .locals 1

    .prologue
    .line 2256
    invoke-super {p0, p1, p2}, Lcom/google/api/services/calendar/CalendarRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/CalendarRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/Calendar$CalendarList$Update;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/CalendarRequest;
    .locals 1

    .prologue
    .line 2117
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/Calendar$CalendarList$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$CalendarList$Update;

    move-result-object v0

    return-object v0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$CalendarList$Update;
    .locals 1

    .prologue
    .line 2149
    invoke-super {p0, p1}, Lcom/google/api/services/calendar/CalendarRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/calendar/CalendarRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/Calendar$CalendarList$Update;

    return-object v0
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/calendar/CalendarRequest;
    .locals 1

    .prologue
    .line 2117
    invoke-virtual {p0, p1}, Lcom/google/api/services/calendar/Calendar$CalendarList$Update;->setFields(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$CalendarList$Update;

    move-result-object v0

    return-object v0
.end method

.method public setSupportsAllDayReminders(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/Calendar$CalendarList$Update;
    .locals 0

    .prologue
    .line 2250
    iput-object p1, p0, Lcom/google/api/services/calendar/Calendar$CalendarList$Update;->supportsAllDayReminders:Ljava/lang/Boolean;

    .line 2251
    return-object p0
.end method
