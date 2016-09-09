.class public final Lcom/google/api/services/calendar/model/TitleContactAnnotation;
.super Lcom/google/api/client/json/GenericJson;
.source "TitleContactAnnotation.java"


# instance fields
.field private annotation:Lcom/google/api/services/calendar/model/UnicodeStringAnnotation;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private contact:Lcom/google/api/services/calendar/model/ContactReference;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/TitleContactAnnotation;->clone()Lcom/google/api/services/calendar/model/TitleContactAnnotation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/TitleContactAnnotation;->clone()Lcom/google/api/services/calendar/model/TitleContactAnnotation;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/calendar/model/TitleContactAnnotation;
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/TitleContactAnnotation;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/api/services/calendar/model/TitleContactAnnotation;->clone()Lcom/google/api/services/calendar/model/TitleContactAnnotation;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotation()Lcom/google/api/services/calendar/model/UnicodeStringAnnotation;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/api/services/calendar/model/TitleContactAnnotation;->annotation:Lcom/google/api/services/calendar/model/UnicodeStringAnnotation;

    return-object v0
.end method

.method public getContact()Lcom/google/api/services/calendar/model/ContactReference;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/api/services/calendar/model/TitleContactAnnotation;->contact:Lcom/google/api/services/calendar/model/ContactReference;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/TitleContactAnnotation;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/TitleContactAnnotation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/model/TitleContactAnnotation;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/TitleContactAnnotation;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/model/TitleContactAnnotation;
    .locals 1

    .prologue
    .line 76
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/model/TitleContactAnnotation;

    return-object v0
.end method

.method public setAnnotation(Lcom/google/api/services/calendar/model/UnicodeStringAnnotation;)Lcom/google/api/services/calendar/model/TitleContactAnnotation;
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/api/services/calendar/model/TitleContactAnnotation;->annotation:Lcom/google/api/services/calendar/model/UnicodeStringAnnotation;

    .line 56
    return-object p0
.end method

.method public setContact(Lcom/google/api/services/calendar/model/ContactReference;)Lcom/google/api/services/calendar/model/TitleContactAnnotation;
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/api/services/calendar/model/TitleContactAnnotation;->contact:Lcom/google/api/services/calendar/model/ContactReference;

    .line 71
    return-object p0
.end method
