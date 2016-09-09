.class public Lcom/google/android/gms/reminders/internal/ref/TaskRef;
.super Lcom/google/android/gms/reminders/internal/ref/zza;

# interfaces
.implements Lcom/google/android/gms/reminders/model/Task;


# instance fields
.field private zzbAh:Z

.field private zzbAi:Lcom/google/android/gms/reminders/internal/ref/TaskIdRef;

.field private zzbAj:Z

.field private zzbAk:Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;

.field private zzbAl:Z

.field private zzbAm:Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;

.field private zzbAn:Z

.field private zzbAo:Lcom/google/android/gms/reminders/internal/ref/LocationRef;

.field private zzbAp:Z

.field private zzbAq:Lcom/google/android/gms/reminders/internal/ref/LocationGroupRef;

.field private zzbAr:Z

.field private zzbAs:Lcom/google/android/gms/reminders/internal/ref/RecurrenceInfoRef;

.field private zzbAt:Z

.field private zzbAu:Lcom/google/android/gms/reminders/internal/ref/ExternalApplicationLinkRef;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/reminders/internal/ref/TaskRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/reminders/internal/ref/zza;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V

    iput-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzbAh:Z

    iput-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzbAj:Z

    iput-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzbAl:Z

    iput-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzbAn:Z

    iput-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzbAp:Z

    iput-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzbAr:Z

    iput-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzbAt:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/android/gms/reminders/model/Task;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/reminders/model/Task;

    invoke-static {p0, p1}, Lcom/google/android/gms/reminders/model/TaskEntity;->zza(Lcom/google/android/gms/reminders/model/Task;Lcom/google/android/gms/reminders/model/Task;)Z

    move-result v0

    goto :goto_0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzGw()Lcom/google/android/gms/reminders/model/Task;

    move-result-object v0

    return-object v0
.end method

.method public getArchived()Ljava/lang/Boolean;
    .locals 1

    const-string v0, "archived"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzgS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getArchivedTimeMs()Ljava/lang/Long;
    .locals 1

    const-string v0, "archived_time_ms"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzgS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getAssistance()[B
    .locals 1

    const-string v0, "assistance"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzgS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getCreatedTimeMillis()Ljava/lang/Long;
    .locals 1

    const-string v0, "created_time_millis"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzgS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getDeleted()Ljava/lang/Boolean;
    .locals 1

    const-string v0, "deleted"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzgS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getDueDate()Lcom/google/android/gms/reminders/model/DateTime;
    .locals 5

    iget-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzbAj:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzbAj:Z

    iget-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzamp:I

    iget v2, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzamq:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzbAf:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "due_date_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;->zza(Lcom/google/android/gms/common/data/DataHolder;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzbAk:Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzbAk:Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;

    iget-object v1, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    iget v2, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzamp:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzbAf:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "due_date_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzbAk:Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;

    goto :goto_0
.end method

.method public getEventDate()Lcom/google/android/gms/reminders/model/DateTime;
    .locals 5

    iget-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzbAl:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzbAl:Z

    iget-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzamp:I

    iget v2, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzamq:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzbAf:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "event_date_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;->zza(Lcom/google/android/gms/common/data/DataHolder;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzbAm:Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzbAm:Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;

    iget-object v1, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    iget v2, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzamp:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzbAf:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "event_date_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzbAm:Lcom/google/android/gms/reminders/internal/ref/DateTimeRef;

    goto :goto_0
.end method

.method public getExperiment()Ljava/lang/Integer;
    .locals 1

    const-string v0, "experiment"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzgS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getExtensions()[B
    .locals 1

    const-string v0, "extensions"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzgS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getExternalApplicationLink()Lcom/google/android/gms/reminders/model/ExternalApplicationLink;
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzbAt:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzbAt:Z

    iget-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzamp:I

    iget v2, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzamq:I

    iget-object v3, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzbAf:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/reminders/internal/ref/ExternalApplicationLinkRef;->zza(Lcom/google/android/gms/common/data/DataHolder;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzbAu:Lcom/google/android/gms/reminders/internal/ref/ExternalApplicationLinkRef;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzbAu:Lcom/google/android/gms/reminders/internal/ref/ExternalApplicationLinkRef;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/reminders/internal/ref/ExternalApplicationLinkRef;

    iget-object v1, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    iget v2, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzamp:I

    iget-object v3, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzbAf:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/reminders/internal/ref/ExternalApplicationLinkRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzbAu:Lcom/google/android/gms/reminders/internal/ref/ExternalApplicationLinkRef;

    goto :goto_0
.end method

.method public getFiredTimeMillis()Ljava/lang/Long;
    .locals 1

    const-string v0, "fired_time_millis"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzgS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Lcom/google/android/gms/reminders/model/Location;
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzbAn:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzbAn:Z

    iget-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzamp:I

    iget v2, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzamq:I

    iget-object v3, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzbAf:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/reminders/internal/ref/LocationRef;->zza(Lcom/google/android/gms/common/data/DataHolder;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzbAo:Lcom/google/android/gms/reminders/internal/ref/LocationRef;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzbAo:Lcom/google/android/gms/reminders/internal/ref/LocationRef;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/reminders/internal/ref/LocationRef;

    iget-object v1, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    iget v2, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzamp:I

    iget-object v3, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzbAf:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/reminders/internal/ref/LocationRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzbAo:Lcom/google/android/gms/reminders/internal/ref/LocationRef;

    goto :goto_0
.end method

.method public getLocationGroup()Lcom/google/android/gms/reminders/model/LocationGroup;
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzbAp:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzbAp:Z

    iget-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzamp:I

    iget v2, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzamq:I

    iget-object v3, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzbAf:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/reminders/internal/ref/LocationGroupRef;->zza(Lcom/google/android/gms/common/data/DataHolder;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzbAq:Lcom/google/android/gms/reminders/internal/ref/LocationGroupRef;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzbAq:Lcom/google/android/gms/reminders/internal/ref/LocationGroupRef;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/reminders/internal/ref/LocationGroupRef;

    iget-object v1, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    iget v2, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzamp:I

    iget-object v3, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzbAf:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/reminders/internal/ref/LocationGroupRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzbAq:Lcom/google/android/gms/reminders/internal/ref/LocationGroupRef;

    goto :goto_0
.end method

.method public getLocationSnoozedUntilMs()Ljava/lang/Long;
    .locals 1

    const-string v0, "location_snoozed_until_ms"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzgS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getPinned()Ljava/lang/Boolean;
    .locals 1

    const-string v0, "pinned"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzgS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getRecurrenceInfo()Lcom/google/android/gms/reminders/model/RecurrenceInfo;
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzbAr:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzbAr:Z

    iget-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzamp:I

    iget v2, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzamq:I

    iget-object v3, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzbAf:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/reminders/internal/ref/RecurrenceInfoRef;->zza(Lcom/google/android/gms/common/data/DataHolder;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzbAs:Lcom/google/android/gms/reminders/internal/ref/RecurrenceInfoRef;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzbAs:Lcom/google/android/gms/reminders/internal/ref/RecurrenceInfoRef;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/reminders/internal/ref/RecurrenceInfoRef;

    iget-object v1, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    iget v2, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzamp:I

    iget-object v3, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzbAf:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/reminders/internal/ref/RecurrenceInfoRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzbAs:Lcom/google/android/gms/reminders/internal/ref/RecurrenceInfoRef;

    goto :goto_0
.end method

.method public getSnoozed()Ljava/lang/Boolean;
    .locals 1

    const-string v0, "snoozed"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzgS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getSnoozedTimeMillis()Ljava/lang/Long;
    .locals 1

    const-string v0, "snoozed_time_millis"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzgS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getTaskId()Lcom/google/android/gms/reminders/model/TaskId;
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzbAh:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzbAh:Z

    iget-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    iget v1, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzamp:I

    iget v2, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzamq:I

    iget-object v3, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzbAf:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/reminders/internal/ref/TaskIdRef;->zza(Lcom/google/android/gms/common/data/DataHolder;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzbAi:Lcom/google/android/gms/reminders/internal/ref/TaskIdRef;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzbAi:Lcom/google/android/gms/reminders/internal/ref/TaskIdRef;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/reminders/internal/ref/TaskIdRef;

    iget-object v1, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->mDataHolder:Lcom/google/android/gms/common/data/DataHolder;

    iget v2, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzamp:I

    iget-object v3, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzbAf:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/reminders/internal/ref/TaskIdRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzbAi:Lcom/google/android/gms/reminders/internal/ref/TaskIdRef;

    goto :goto_0
.end method

.method public getTaskList()Ljava/lang/Integer;
    .locals 1

    const-string v0, "task_list"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzgS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "title"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->zzgS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/reminders/internal/ref/TaskRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/reminders/model/TaskEntity;->zzc(Lcom/google/android/gms/reminders/model/Task;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/reminders/model/TaskEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/reminders/model/TaskEntity;-><init>(Lcom/google/android/gms/reminders/model/Task;)V

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/reminders/model/TaskEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzGw()Lcom/google/android/gms/reminders/model/Task;
    .locals 1

    new-instance v0, Lcom/google/android/gms/reminders/model/TaskEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/reminders/model/TaskEntity;-><init>(Lcom/google/android/gms/reminders/model/Task;)V

    return-object v0
.end method
