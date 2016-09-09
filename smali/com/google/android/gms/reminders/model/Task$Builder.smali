.class public Lcom/google/android/gms/reminders/model/Task$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/reminders/model/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zzawl:Ljava/lang/String;

.field private zzbBT:Lcom/google/android/gms/reminders/model/TaskId;

.field private zzbBU:Ljava/lang/Integer;

.field private zzbBV:Ljava/lang/Long;

.field private zzbBW:Ljava/lang/Long;

.field private zzbBX:Ljava/lang/Boolean;

.field private zzbBY:Ljava/lang/Boolean;

.field private zzbBZ:Ljava/lang/Boolean;

.field private zzbCa:Ljava/lang/Boolean;

.field private zzbCb:Ljava/lang/Long;

.field private zzbCc:Lcom/google/android/gms/reminders/model/DateTime;

.field private zzbCd:Lcom/google/android/gms/reminders/model/DateTime;

.field private zzbCe:Lcom/google/android/gms/reminders/model/Location;

.field private zzbCf:Lcom/google/android/gms/reminders/model/LocationGroup;

.field private zzbCg:Ljava/lang/Long;

.field private zzbCh:[B

.field private zzbCi:Lcom/google/android/gms/reminders/model/RecurrenceInfo;

.field private zzbCj:[B

.field private zzbCk:Ljava/lang/Integer;

.field private zzbCl:Lcom/google/android/gms/reminders/model/ExternalApplicationLink;

.field private zzbCm:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/reminders/model/Task;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getTaskId()Lcom/google/android/gms/reminders/model/TaskId;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/reminders/model/Task$Builder;->zzbBT:Lcom/google/android/gms/reminders/model/TaskId;

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getTaskList()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/reminders/model/Task$Builder;->zzbBU:Ljava/lang/Integer;

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/reminders/model/Task$Builder;->zzawl:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getCreatedTimeMillis()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/reminders/model/Task$Builder;->zzbBV:Ljava/lang/Long;

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getArchivedTimeMs()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/reminders/model/Task$Builder;->zzbBW:Ljava/lang/Long;

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getArchived()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/reminders/model/Task$Builder;->zzbBX:Ljava/lang/Boolean;

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getDeleted()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/reminders/model/Task$Builder;->zzbBY:Ljava/lang/Boolean;

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getPinned()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/reminders/model/Task$Builder;->zzbBZ:Ljava/lang/Boolean;

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getSnoozed()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/reminders/model/Task$Builder;->zzbCa:Ljava/lang/Boolean;

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getSnoozedTimeMillis()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/reminders/model/Task$Builder;->zzbCb:Ljava/lang/Long;

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getDueDate()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/reminders/model/Task$Builder;->zzbCc:Lcom/google/android/gms/reminders/model/DateTime;

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getEventDate()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v1

    :goto_2
    iput-object v0, p0, Lcom/google/android/gms/reminders/model/Task$Builder;->zzbCd:Lcom/google/android/gms/reminders/model/DateTime;

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getLocation()Lcom/google/android/gms/reminders/model/Location;

    move-result-object v0

    if-nez v0, :cond_3

    move-object v0, v1

    :goto_3
    iput-object v0, p0, Lcom/google/android/gms/reminders/model/Task$Builder;->zzbCe:Lcom/google/android/gms/reminders/model/Location;

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getLocationGroup()Lcom/google/android/gms/reminders/model/LocationGroup;

    move-result-object v0

    if-nez v0, :cond_4

    move-object v0, v1

    :goto_4
    iput-object v0, p0, Lcom/google/android/gms/reminders/model/Task$Builder;->zzbCf:Lcom/google/android/gms/reminders/model/LocationGroup;

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getLocationSnoozedUntilMs()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/reminders/model/Task$Builder;->zzbCg:Ljava/lang/Long;

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getExtensions()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/reminders/model/Task$Builder;->zzbCh:[B

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getRecurrenceInfo()Lcom/google/android/gms/reminders/model/RecurrenceInfo;

    move-result-object v0

    if-nez v0, :cond_5

    move-object v0, v1

    :goto_5
    iput-object v0, p0, Lcom/google/android/gms/reminders/model/Task$Builder;->zzbCi:Lcom/google/android/gms/reminders/model/RecurrenceInfo;

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getAssistance()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/reminders/model/Task$Builder;->zzbCj:[B

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getExperiment()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/reminders/model/Task$Builder;->zzbCk:Ljava/lang/Integer;

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getExternalApplicationLink()Lcom/google/android/gms/reminders/model/ExternalApplicationLink;

    move-result-object v0

    if-nez v0, :cond_6

    :goto_6
    iput-object v1, p0, Lcom/google/android/gms/reminders/model/Task$Builder;->zzbCl:Lcom/google/android/gms/reminders/model/ExternalApplicationLink;

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getFiredTimeMillis()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/reminders/model/Task$Builder;->zzbCm:Ljava/lang/Long;

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/reminders/model/TaskIdEntity;

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getTaskId()Lcom/google/android/gms/reminders/model/TaskId;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/reminders/model/TaskIdEntity;-><init>(Lcom/google/android/gms/reminders/model/TaskId;)V

    goto/16 :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/reminders/model/DateTimeEntity;

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getDueDate()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/reminders/model/DateTimeEntity;-><init>(Lcom/google/android/gms/reminders/model/DateTime;)V

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/google/android/gms/reminders/model/DateTimeEntity;

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getEventDate()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/reminders/model/DateTimeEntity;-><init>(Lcom/google/android/gms/reminders/model/DateTime;)V

    goto :goto_2

    :cond_3
    new-instance v0, Lcom/google/android/gms/reminders/model/LocationEntity;

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getLocation()Lcom/google/android/gms/reminders/model/Location;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/reminders/model/LocationEntity;-><init>(Lcom/google/android/gms/reminders/model/Location;)V

    goto :goto_3

    :cond_4
    new-instance v0, Lcom/google/android/gms/reminders/model/LocationGroupEntity;

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getLocationGroup()Lcom/google/android/gms/reminders/model/LocationGroup;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/reminders/model/LocationGroupEntity;-><init>(Lcom/google/android/gms/reminders/model/LocationGroup;)V

    goto :goto_4

    :cond_5
    new-instance v0, Lcom/google/android/gms/reminders/model/RecurrenceInfoEntity;

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getRecurrenceInfo()Lcom/google/android/gms/reminders/model/RecurrenceInfo;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/reminders/model/RecurrenceInfoEntity;-><init>(Lcom/google/android/gms/reminders/model/RecurrenceInfo;)V

    goto :goto_5

    :cond_6
    new-instance v1, Lcom/google/android/gms/reminders/model/ExternalApplicationLinkEntity;

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getExternalApplicationLink()Lcom/google/android/gms/reminders/model/ExternalApplicationLink;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/reminders/model/ExternalApplicationLinkEntity;-><init>(Lcom/google/android/gms/reminders/model/ExternalApplicationLink;)V

    goto :goto_6
.end method


# virtual methods
.method public build()Lcom/google/android/gms/reminders/model/Task;
    .locals 24

    new-instance v1, Lcom/google/android/gms/reminders/model/TaskEntity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/reminders/model/Task$Builder;->zzbBT:Lcom/google/android/gms/reminders/model/TaskId;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/reminders/model/Task$Builder;->zzbBU:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/reminders/model/Task$Builder;->zzawl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/reminders/model/Task$Builder;->zzbBV:Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/reminders/model/Task$Builder;->zzbBW:Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/reminders/model/Task$Builder;->zzbBX:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/reminders/model/Task$Builder;->zzbBY:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/reminders/model/Task$Builder;->zzbBZ:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/reminders/model/Task$Builder;->zzbCa:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/gms/reminders/model/Task$Builder;->zzbCb:Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gms/reminders/model/Task$Builder;->zzbCc:Lcom/google/android/gms/reminders/model/DateTime;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gms/reminders/model/Task$Builder;->zzbCd:Lcom/google/android/gms/reminders/model/DateTime;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gms/reminders/model/Task$Builder;->zzbCe:Lcom/google/android/gms/reminders/model/Location;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gms/reminders/model/Task$Builder;->zzbCf:Lcom/google/android/gms/reminders/model/LocationGroup;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/reminders/model/Task$Builder;->zzbCg:Ljava/lang/Long;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/reminders/model/Task$Builder;->zzbCh:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/reminders/model/Task$Builder;->zzbCi:Lcom/google/android/gms/reminders/model/RecurrenceInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/reminders/model/Task$Builder;->zzbCj:[B

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/reminders/model/Task$Builder;->zzbCk:Ljava/lang/Integer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/reminders/model/Task$Builder;->zzbCl:Lcom/google/android/gms/reminders/model/ExternalApplicationLink;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/reminders/model/Task$Builder;->zzbCm:Ljava/lang/Long;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-direct/range {v1 .. v23}, Lcom/google/android/gms/reminders/model/TaskEntity;-><init>(Lcom/google/android/gms/reminders/model/TaskId;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/google/android/gms/reminders/model/DateTime;Lcom/google/android/gms/reminders/model/DateTime;Lcom/google/android/gms/reminders/model/Location;Lcom/google/android/gms/reminders/model/LocationGroup;Ljava/lang/Long;[BLcom/google/android/gms/reminders/model/RecurrenceInfo;[BLjava/lang/Integer;Lcom/google/android/gms/reminders/model/ExternalApplicationLink;Ljava/lang/Long;Z)V

    return-object v1
.end method

.method public setArchived(Ljava/lang/Boolean;)Lcom/google/android/gms/reminders/model/Task$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/Task$Builder;->zzbBX:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setArchivedTimeMs(Ljava/lang/Long;)Lcom/google/android/gms/reminders/model/Task$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/Task$Builder;->zzbBW:Ljava/lang/Long;

    return-object p0
.end method

.method public setAssistance([B)Lcom/google/android/gms/reminders/model/Task$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/Task$Builder;->zzbCj:[B

    return-object p0
.end method

.method public setDeleted(Ljava/lang/Boolean;)Lcom/google/android/gms/reminders/model/Task$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/Task$Builder;->zzbBY:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setDueDate(Lcom/google/android/gms/reminders/model/DateTime;)Lcom/google/android/gms/reminders/model/Task$Builder;
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/DateTime;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/model/DateTime;

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/reminders/model/Task$Builder;->zzbCc:Lcom/google/android/gms/reminders/model/DateTime;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setExtensions([B)Lcom/google/android/gms/reminders/model/Task$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/Task$Builder;->zzbCh:[B

    return-object p0
.end method

.method public setLocation(Lcom/google/android/gms/reminders/model/Location;)Lcom/google/android/gms/reminders/model/Task$Builder;
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Location;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/model/Location;

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/reminders/model/Task$Builder;->zzbCe:Lcom/google/android/gms/reminders/model/Location;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPinned(Ljava/lang/Boolean;)Lcom/google/android/gms/reminders/model/Task$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/Task$Builder;->zzbBZ:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setRecurrenceInfo(Lcom/google/android/gms/reminders/model/RecurrenceInfo;)Lcom/google/android/gms/reminders/model/Task$Builder;
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/RecurrenceInfo;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/model/RecurrenceInfo;

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/reminders/model/Task$Builder;->zzbCi:Lcom/google/android/gms/reminders/model/RecurrenceInfo;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSnoozed(Ljava/lang/Boolean;)Lcom/google/android/gms/reminders/model/Task$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/Task$Builder;->zzbCa:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setSnoozedTimeMillis(Ljava/lang/Long;)Lcom/google/android/gms/reminders/model/Task$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/Task$Builder;->zzbCb:Ljava/lang/Long;

    return-object p0
.end method

.method public setTaskId(Lcom/google/android/gms/reminders/model/TaskId;)Lcom/google/android/gms/reminders/model/Task$Builder;
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/TaskId;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/model/TaskId;

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/reminders/model/Task$Builder;->zzbBT:Lcom/google/android/gms/reminders/model/TaskId;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTaskList(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/Task$Builder;
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    const-string v1, "Invalid constant for SystemListId. Use value in ModelConstants"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/Task$Builder;->zzbBU:Ljava/lang/Integer;

    return-object p0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/android/gms/reminders/model/Task$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/Task$Builder;->zzawl:Ljava/lang/String;

    return-object p0
.end method
