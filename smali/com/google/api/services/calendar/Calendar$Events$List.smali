.class public Lcom/google/api/services/calendar/Calendar$Events$List;
.super Lcom/google/api/services/calendar/CalendarRequest;
.source "Calendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/calendar/Calendar$Events;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "List"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/calendar/CalendarRequest",
        "<",
        "Lcom/google/api/services/calendar/model/Events;",
        ">;"
    }
.end annotation


# instance fields
.field private calendarId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private maxAttendees:Ljava/lang/Integer;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private maxResults:Ljava/lang/Integer;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private onlyHabitInstances:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private pageToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private singleEvents:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private supportsAllDayReminders:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/api/services/calendar/Calendar$Events;

.field private timeMax:Lcom/google/api/client/util/DateTime;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private timeMin:Lcom/google/api/client/util/DateTime;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private timeZone:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private updatedMin:Lcom/google/api/client/util/DateTime;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/api/services/calendar/Calendar$Events;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 4875
    iput-object p1, p0, Lcom/google/api/services/calendar/Calendar$Events$List;->this$1:Lcom/google/api/services/calendar/Calendar$Events;

    .line 4876
    iget-object v1, p1, Lcom/google/api/services/calendar/Calendar$Events;->this$0:Lcom/google/api/services/calendar/Calendar;

    const-string v2, "GET"

    const-string v3, "calendars/{calendarId}/events"

    const/4 v4, 0x0

    const-class v5, Lcom/google/api/services/calendar/model/Events;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/calendar/CalendarRequest;-><init>(Lcom/google/api/services/calendar/Calendar;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 4877
    const-string v0, "Required parameter calendarId must be specified."

    invoke-static {p2, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/calendar/Calendar$Events$List;->calendarId:Ljava/lang/String;

    .line 4878
    return-void
.end method


# virtual methods
.method public getUpdatedMin()Lcom/google/api/client/util/DateTime;
    .locals 1

    .prologue
    .line 5526
    iget-object v0, p0, Lcom/google/api/services/calendar/Calendar$Events$List;->updatedMin:Lcom/google/api/client/util/DateTime;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .locals 1

    .prologue
    .line 4857
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/Calendar$Events$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$Events$List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 1

    .prologue
    .line 4857
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/Calendar$Events$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$Events$List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 4857
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/Calendar$Events$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$Events$List;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$Events$List;
    .locals 1

    .prologue
    .line 5541
    invoke-super {p0, p1, p2}, Lcom/google/api/services/calendar/CalendarRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/CalendarRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/Calendar$Events$List;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/CalendarRequest;
    .locals 1

    .prologue
    .line 4857
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/Calendar$Events$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$Events$List;

    move-result-object v0

    return-object v0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Events$List;
    .locals 1

    .prologue
    .line 4897
    invoke-super {p0, p1}, Lcom/google/api/services/calendar/CalendarRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/calendar/CalendarRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/Calendar$Events$List;

    return-object v0
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/calendar/CalendarRequest;
    .locals 1

    .prologue
    .line 4857
    invoke-virtual {p0, p1}, Lcom/google/api/services/calendar/Calendar$Events$List;->setFields(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Events$List;

    move-result-object v0

    return-object v0
.end method

.method public setMaxAttendees(Ljava/lang/Integer;)Lcom/google/api/services/calendar/Calendar$Events$List;
    .locals 0

    .prologue
    .line 5080
    iput-object p1, p0, Lcom/google/api/services/calendar/Calendar$Events$List;->maxAttendees:Ljava/lang/Integer;

    .line 5081
    return-object p0
.end method

.method public setMaxResults(Ljava/lang/Integer;)Lcom/google/api/services/calendar/Calendar$Events$List;
    .locals 0

    .prologue
    .line 5130
    iput-object p1, p0, Lcom/google/api/services/calendar/Calendar$Events$List;->maxResults:Ljava/lang/Integer;

    .line 5131
    return-object p0
.end method

.method public setOnlyHabitInstances(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/Calendar$Events$List;
    .locals 0

    .prologue
    .line 5146
    iput-object p1, p0, Lcom/google/api/services/calendar/Calendar$Events$List;->onlyHabitInstances:Ljava/lang/Boolean;

    .line 5147
    return-object p0
.end method

.method public setPageToken(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Events$List;
    .locals 0

    .prologue
    .line 5185
    iput-object p1, p0, Lcom/google/api/services/calendar/Calendar$Events$List;->pageToken:Ljava/lang/String;

    .line 5186
    return-object p0
.end method

.method public setSingleEvents(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/Calendar$Events$List;
    .locals 0

    .prologue
    .line 5355
    iput-object p1, p0, Lcom/google/api/services/calendar/Calendar$Events$List;->singleEvents:Ljava/lang/Boolean;

    .line 5356
    return-object p0
.end method

.method public setSupportsAllDayReminders(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/Calendar$Events$List;
    .locals 0

    .prologue
    .line 5381
    iput-object p1, p0, Lcom/google/api/services/calendar/Calendar$Events$List;->supportsAllDayReminders:Ljava/lang/Boolean;

    .line 5382
    return-object p0
.end method

.method public setTimeMax(Lcom/google/api/client/util/DateTime;)Lcom/google/api/services/calendar/Calendar$Events$List;
    .locals 0

    .prologue
    .line 5461
    iput-object p1, p0, Lcom/google/api/services/calendar/Calendar$Events$List;->timeMax:Lcom/google/api/client/util/DateTime;

    .line 5462
    return-object p0
.end method

.method public setTimeMin(Lcom/google/api/client/util/DateTime;)Lcom/google/api/services/calendar/Calendar$Events$List;
    .locals 0

    .prologue
    .line 5489
    iput-object p1, p0, Lcom/google/api/services/calendar/Calendar$Events$List;->timeMin:Lcom/google/api/client/util/DateTime;

    .line 5490
    return-object p0
.end method

.method public setTimeZone(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Events$List;
    .locals 0

    .prologue
    .line 5509
    iput-object p1, p0, Lcom/google/api/services/calendar/Calendar$Events$List;->timeZone:Ljava/lang/String;

    .line 5510
    return-object p0
.end method

.method public setUpdatedMin(Lcom/google/api/client/util/DateTime;)Lcom/google/api/services/calendar/Calendar$Events$List;
    .locals 0

    .prologue
    .line 5535
    iput-object p1, p0, Lcom/google/api/services/calendar/Calendar$Events$List;->updatedMin:Lcom/google/api/client/util/DateTime;

    .line 5536
    return-object p0
.end method
