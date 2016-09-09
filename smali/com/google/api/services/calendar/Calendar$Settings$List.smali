.class public Lcom/google/api/services/calendar/Calendar$Settings$List;
.super Lcom/google/api/services/calendar/CalendarRequest;
.source "Calendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/calendar/Calendar$Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "List"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/calendar/CalendarRequest",
        "<",
        "Lcom/google/api/services/calendar/model/Settings;",
        ">;"
    }
.end annotation


# instance fields
.field private maxResults:Ljava/lang/Integer;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private namespace:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pageToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/api/services/calendar/Calendar$Settings;


# direct methods
.method protected constructor <init>(Lcom/google/api/services/calendar/Calendar$Settings;)V
    .locals 6

    .prologue
    .line 8914
    iput-object p1, p0, Lcom/google/api/services/calendar/Calendar$Settings$List;->this$1:Lcom/google/api/services/calendar/Calendar$Settings;

    .line 8915
    iget-object v1, p1, Lcom/google/api/services/calendar/Calendar$Settings;->this$0:Lcom/google/api/services/calendar/Calendar;

    const-string v2, "GET"

    const-string v3, "users/me/settings"

    const/4 v4, 0x0

    const-class v5, Lcom/google/api/services/calendar/model/Settings;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/calendar/CalendarRequest;-><init>(Lcom/google/api/services/calendar/Calendar;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 8916
    return-void
.end method


# virtual methods
.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .locals 1

    .prologue
    .line 8898
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/Calendar$Settings$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$Settings$List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 1

    .prologue
    .line 8898
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/Calendar$Settings$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$Settings$List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 8898
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/Calendar$Settings$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$Settings$List;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$Settings$List;
    .locals 1

    .prologue
    .line 9079
    invoke-super {p0, p1, p2}, Lcom/google/api/services/calendar/CalendarRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/CalendarRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/Calendar$Settings$List;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/CalendarRequest;
    .locals 1

    .prologue
    .line 8898
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/Calendar$Settings$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$Settings$List;

    move-result-object v0

    return-object v0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Settings$List;
    .locals 1

    .prologue
    .line 8935
    invoke-super {p0, p1}, Lcom/google/api/services/calendar/CalendarRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/calendar/CalendarRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/Calendar$Settings$List;

    return-object v0
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/calendar/CalendarRequest;
    .locals 1

    .prologue
    .line 8898
    invoke-virtual {p0, p1}, Lcom/google/api/services/calendar/Calendar$Settings$List;->setFields(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Settings$List;

    move-result-object v0

    return-object v0
.end method

.method public setMaxResults(Ljava/lang/Integer;)Lcom/google/api/services/calendar/Calendar$Settings$List;
    .locals 0

    .prologue
    .line 8984
    iput-object p1, p0, Lcom/google/api/services/calendar/Calendar$Settings$List;->maxResults:Ljava/lang/Integer;

    .line 8985
    return-object p0
.end method

.method public setNamespace(Ljava/util/List;)Lcom/google/api/services/calendar/Calendar$Settings$List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/services/calendar/Calendar$Settings$List;"
        }
    .end annotation

    .prologue
    .line 9007
    iput-object p1, p0, Lcom/google/api/services/calendar/Calendar$Settings$List;->namespace:Ljava/util/List;

    .line 9008
    return-object p0
.end method

.method public setPageToken(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Settings$List;
    .locals 0

    .prologue
    .line 9023
    iput-object p1, p0, Lcom/google/api/services/calendar/Calendar$Settings$List;->pageToken:Ljava/lang/String;

    .line 9024
    return-object p0
.end method
