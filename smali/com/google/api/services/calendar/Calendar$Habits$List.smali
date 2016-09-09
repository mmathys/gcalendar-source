.class public Lcom/google/api/services/calendar/Calendar$Habits$List;
.super Lcom/google/api/services/calendar/CalendarRequest;
.source "Calendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/calendar/Calendar$Habits;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "List"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/calendar/CalendarRequest",
        "<",
        "Lcom/google/api/services/calendar/model/Habits;",
        ">;"
    }
.end annotation


# instance fields
.field private calendarId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private pageToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private syncToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/api/services/calendar/Calendar$Habits;


# direct methods
.method protected constructor <init>(Lcom/google/api/services/calendar/Calendar$Habits;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 7918
    iput-object p1, p0, Lcom/google/api/services/calendar/Calendar$Habits$List;->this$1:Lcom/google/api/services/calendar/Calendar$Habits;

    .line 7919
    iget-object v1, p1, Lcom/google/api/services/calendar/Calendar$Habits;->this$0:Lcom/google/api/services/calendar/Calendar;

    const-string v2, "GET"

    const-string v3, "calendars/{calendarId}/habits"

    const/4 v4, 0x0

    const-class v5, Lcom/google/api/services/calendar/model/Habits;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/calendar/CalendarRequest;-><init>(Lcom/google/api/services/calendar/Calendar;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 7920
    const-string v0, "Required parameter calendarId must be specified."

    invoke-static {p2, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/calendar/Calendar$Habits$List;->calendarId:Ljava/lang/String;

    .line 7921
    return-void
.end method


# virtual methods
.method public getPageToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8026
    iget-object v0, p0, Lcom/google/api/services/calendar/Calendar$Habits$List;->pageToken:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .locals 1

    .prologue
    .line 7899
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/Calendar$Habits$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$Habits$List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 1

    .prologue
    .line 7899
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/Calendar$Habits$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$Habits$List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 7899
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/Calendar$Habits$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$Habits$List;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$Habits$List;
    .locals 1

    .prologue
    .line 8091
    invoke-super {p0, p1, p2}, Lcom/google/api/services/calendar/CalendarRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/CalendarRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/Calendar$Habits$List;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/CalendarRequest;
    .locals 1

    .prologue
    .line 7899
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/Calendar$Habits$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$Habits$List;

    move-result-object v0

    return-object v0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Habits$List;
    .locals 1

    .prologue
    .line 7940
    invoke-super {p0, p1}, Lcom/google/api/services/calendar/CalendarRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/calendar/CalendarRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/Calendar$Habits$List;

    return-object v0
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/calendar/CalendarRequest;
    .locals 1

    .prologue
    .line 7899
    invoke-virtual {p0, p1}, Lcom/google/api/services/calendar/Calendar$Habits$List;->setFields(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Habits$List;

    move-result-object v0

    return-object v0
.end method

.method public setPageToken(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Habits$List;
    .locals 0

    .prologue
    .line 8031
    iput-object p1, p0, Lcom/google/api/services/calendar/Calendar$Habits$List;->pageToken:Ljava/lang/String;

    .line 8032
    return-object p0
.end method

.method public setSyncToken(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Habits$List;
    .locals 0

    .prologue
    .line 8085
    iput-object p1, p0, Lcom/google/api/services/calendar/Calendar$Habits$List;->syncToken:Ljava/lang/String;

    .line 8086
    return-object p0
.end method
