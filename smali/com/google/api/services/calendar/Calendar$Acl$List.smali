.class public Lcom/google/api/services/calendar/Calendar$Acl$List;
.super Lcom/google/api/services/calendar/CalendarRequest;
.source "Calendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/calendar/Calendar$Acl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "List"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/calendar/CalendarRequest",
        "<",
        "Lcom/google/api/services/calendar/model/Acl;",
        ">;"
    }
.end annotation


# instance fields
.field private calendarId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/api/services/calendar/Calendar$Acl;


# direct methods
.method protected constructor <init>(Lcom/google/api/services/calendar/Calendar$Acl;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 571
    iput-object p1, p0, Lcom/google/api/services/calendar/Calendar$Acl$List;->this$1:Lcom/google/api/services/calendar/Calendar$Acl;

    .line 572
    iget-object v1, p1, Lcom/google/api/services/calendar/Calendar$Acl;->this$0:Lcom/google/api/services/calendar/Calendar;

    const-string v2, "GET"

    const-string v3, "calendars/{calendarId}/acl"

    const/4 v4, 0x0

    const-class v5, Lcom/google/api/services/calendar/model/Acl;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/calendar/CalendarRequest;-><init>(Lcom/google/api/services/calendar/Calendar;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 573
    const-string v0, "Required parameter calendarId must be specified."

    invoke-static {p2, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/calendar/Calendar$Acl$List;->calendarId:Ljava/lang/String;

    .line 574
    return-void
.end method


# virtual methods
.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .locals 1

    .prologue
    .line 553
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/Calendar$Acl$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$Acl$List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 1

    .prologue
    .line 553
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/Calendar$Acl$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$Acl$List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 553
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/Calendar$Acl$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$Acl$List;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$Acl$List;
    .locals 1

    .prologue
    .line 753
    invoke-super {p0, p1, p2}, Lcom/google/api/services/calendar/CalendarRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/CalendarRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/Calendar$Acl$List;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/CalendarRequest;
    .locals 1

    .prologue
    .line 553
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/Calendar$Acl$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$Acl$List;

    move-result-object v0

    return-object v0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Acl$List;
    .locals 1

    .prologue
    .line 593
    invoke-super {p0, p1}, Lcom/google/api/services/calendar/CalendarRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/calendar/CalendarRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/Calendar$Acl$List;

    return-object v0
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/calendar/CalendarRequest;
    .locals 1

    .prologue
    .line 553
    invoke-virtual {p0, p1}, Lcom/google/api/services/calendar/Calendar$Acl$List;->setFields(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Acl$List;

    move-result-object v0

    return-object v0
.end method
