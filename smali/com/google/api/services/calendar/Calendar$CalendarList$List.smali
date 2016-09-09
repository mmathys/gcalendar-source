.class public Lcom/google/api/services/calendar/Calendar$CalendarList$List;
.super Lcom/google/api/services/calendar/CalendarRequest;
.source "Calendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/calendar/Calendar$CalendarList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "List"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/calendar/CalendarRequest",
        "<",
        "Lcom/google/api/services/calendar/model/CalendarList;",
        ">;"
    }
.end annotation


# instance fields
.field private maxResults:Ljava/lang/Integer;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private pageToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private supportsAllDayReminders:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/api/services/calendar/Calendar$CalendarList;


# direct methods
.method protected constructor <init>(Lcom/google/api/services/calendar/Calendar$CalendarList;)V
    .locals 6

    .prologue
    .line 1709
    iput-object p1, p0, Lcom/google/api/services/calendar/Calendar$CalendarList$List;->this$1:Lcom/google/api/services/calendar/Calendar$CalendarList;

    .line 1710
    iget-object v1, p1, Lcom/google/api/services/calendar/Calendar$CalendarList;->this$0:Lcom/google/api/services/calendar/Calendar;

    const-string v2, "GET"

    const-string v3, "users/me/calendarList"

    const/4 v4, 0x0

    const-class v5, Lcom/google/api/services/calendar/model/CalendarList;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/calendar/CalendarRequest;-><init>(Lcom/google/api/services/calendar/Calendar;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1711
    return-void
.end method


# virtual methods
.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .locals 1

    .prologue
    .line 1693
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/Calendar$CalendarList$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$CalendarList$List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 1

    .prologue
    .line 1693
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/Calendar$CalendarList$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$CalendarList$List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 1693
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/Calendar$CalendarList$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$CalendarList$List;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$CalendarList$List;
    .locals 1

    .prologue
    .line 1934
    invoke-super {p0, p1, p2}, Lcom/google/api/services/calendar/CalendarRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/CalendarRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/Calendar$CalendarList$List;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/CalendarRequest;
    .locals 1

    .prologue
    .line 1693
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/Calendar$CalendarList$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$CalendarList$List;

    move-result-object v0

    return-object v0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$CalendarList$List;
    .locals 1

    .prologue
    .line 1730
    invoke-super {p0, p1}, Lcom/google/api/services/calendar/CalendarRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/calendar/CalendarRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/Calendar$CalendarList$List;

    return-object v0
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/calendar/CalendarRequest;
    .locals 1

    .prologue
    .line 1693
    invoke-virtual {p0, p1}, Lcom/google/api/services/calendar/Calendar$CalendarList$List;->setFields(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$CalendarList$List;

    move-result-object v0

    return-object v0
.end method

.method public setMaxResults(Ljava/lang/Integer;)Lcom/google/api/services/calendar/Calendar$CalendarList$List;
    .locals 0

    .prologue
    .line 1779
    iput-object p1, p0, Lcom/google/api/services/calendar/Calendar$CalendarList$List;->maxResults:Ljava/lang/Integer;

    .line 1780
    return-object p0
.end method

.method public setPageToken(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$CalendarList$List;
    .locals 0

    .prologue
    .line 1818
    iput-object p1, p0, Lcom/google/api/services/calendar/Calendar$CalendarList$List;->pageToken:Ljava/lang/String;

    .line 1819
    return-object p0
.end method

.method public setSupportsAllDayReminders(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/Calendar$CalendarList$List;
    .locals 0

    .prologue
    .line 1882
    iput-object p1, p0, Lcom/google/api/services/calendar/Calendar$CalendarList$List;->supportsAllDayReminders:Ljava/lang/Boolean;

    .line 1883
    return-object p0
.end method
