.class public Lcom/google/android/gms/reminders/model/TaskEntity;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/reminders/model/Task;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/reminders/model/TaskEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mVersionCode:I

.field private final zzawl:Ljava/lang/String;

.field private final zzbBU:Ljava/lang/Integer;

.field private final zzbBV:Ljava/lang/Long;

.field private final zzbBW:Ljava/lang/Long;

.field private final zzbBX:Ljava/lang/Boolean;

.field private final zzbBY:Ljava/lang/Boolean;

.field private final zzbBZ:Ljava/lang/Boolean;

.field private final zzbCa:Ljava/lang/Boolean;

.field private final zzbCb:Ljava/lang/Long;

.field private final zzbCg:Ljava/lang/Long;

.field private final zzbCh:[B

.field private final zzbCj:[B

.field private final zzbCk:Ljava/lang/Integer;

.field private final zzbCm:Ljava/lang/Long;

.field private final zzbCn:Lcom/google/android/gms/reminders/model/TaskIdEntity;

.field private final zzbCo:Lcom/google/android/gms/reminders/model/DateTimeEntity;

.field private final zzbCp:Lcom/google/android/gms/reminders/model/DateTimeEntity;

.field private final zzbCq:Lcom/google/android/gms/reminders/model/LocationEntity;

.field private final zzbCr:Lcom/google/android/gms/reminders/model/LocationGroupEntity;

.field private final zzbCs:Lcom/google/android/gms/reminders/model/RecurrenceInfoEntity;

.field private final zzbCt:Lcom/google/android/gms/reminders/model/ExternalApplicationLinkEntity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/reminders/model/zzq;

    invoke-direct {v0}, Lcom/google/android/gms/reminders/model/zzq;-><init>()V

    sput-object v0, Lcom/google/android/gms/reminders/model/TaskEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/reminders/model/TaskIdEntity;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/google/android/gms/reminders/model/DateTimeEntity;Lcom/google/android/gms/reminders/model/DateTimeEntity;Lcom/google/android/gms/reminders/model/LocationEntity;Lcom/google/android/gms/reminders/model/LocationGroupEntity;Ljava/lang/Long;[BLcom/google/android/gms/reminders/model/RecurrenceInfoEntity;[BLjava/lang/Integer;Lcom/google/android/gms/reminders/model/ExternalApplicationLinkEntity;Ljava/lang/Long;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbCn:Lcom/google/android/gms/reminders/model/TaskIdEntity;

    iput-object p3, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbBU:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzawl:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbBV:Ljava/lang/Long;

    iput-object p6, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbBW:Ljava/lang/Long;

    iput-object p7, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbBX:Ljava/lang/Boolean;

    iput-object p8, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbBY:Ljava/lang/Boolean;

    iput-object p9, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbBZ:Ljava/lang/Boolean;

    iput-object p10, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbCa:Ljava/lang/Boolean;

    iput-object p11, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbCb:Ljava/lang/Long;

    iput-object p12, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbCo:Lcom/google/android/gms/reminders/model/DateTimeEntity;

    iput-object p13, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbCp:Lcom/google/android/gms/reminders/model/DateTimeEntity;

    iput-object p14, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbCq:Lcom/google/android/gms/reminders/model/LocationEntity;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbCr:Lcom/google/android/gms/reminders/model/LocationGroupEntity;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbCg:Ljava/lang/Long;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbCh:[B

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbCs:Lcom/google/android/gms/reminders/model/RecurrenceInfoEntity;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbCj:[B

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbCk:Ljava/lang/Integer;

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbCt:Lcom/google/android/gms/reminders/model/ExternalApplicationLinkEntity;

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbCm:Ljava/lang/Long;

    iput p1, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->mVersionCode:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/reminders/model/Task;)V
    .locals 23

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/reminders/model/Task;->getTaskId()Lcom/google/android/gms/reminders/model/TaskId;

    move-result-object v1

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/reminders/model/Task;->getTaskList()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/reminders/model/Task;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/reminders/model/Task;->getCreatedTimeMillis()Ljava/lang/Long;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/reminders/model/Task;->getArchivedTimeMs()Ljava/lang/Long;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/reminders/model/Task;->getArchived()Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/reminders/model/Task;->getDeleted()Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/reminders/model/Task;->getPinned()Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/reminders/model/Task;->getSnoozed()Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/reminders/model/Task;->getSnoozedTimeMillis()Ljava/lang/Long;

    move-result-object v10

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/reminders/model/Task;->getDueDate()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v11

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/reminders/model/Task;->getEventDate()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v12

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/reminders/model/Task;->getLocation()Lcom/google/android/gms/reminders/model/Location;

    move-result-object v13

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/reminders/model/Task;->getLocationGroup()Lcom/google/android/gms/reminders/model/LocationGroup;

    move-result-object v14

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/reminders/model/Task;->getLocationSnoozedUntilMs()Ljava/lang/Long;

    move-result-object v15

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/reminders/model/Task;->getExtensions()[B

    move-result-object v16

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/reminders/model/Task;->getRecurrenceInfo()Lcom/google/android/gms/reminders/model/RecurrenceInfo;

    move-result-object v17

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/reminders/model/Task;->getAssistance()[B

    move-result-object v18

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/reminders/model/Task;->getExperiment()Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/reminders/model/Task;->getExternalApplicationLink()Lcom/google/android/gms/reminders/model/ExternalApplicationLink;

    move-result-object v20

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/reminders/model/Task;->getFiredTimeMillis()Ljava/lang/Long;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v22}, Lcom/google/android/gms/reminders/model/TaskEntity;-><init>(Lcom/google/android/gms/reminders/model/TaskId;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/google/android/gms/reminders/model/DateTime;Lcom/google/android/gms/reminders/model/DateTime;Lcom/google/android/gms/reminders/model/Location;Lcom/google/android/gms/reminders/model/LocationGroup;Ljava/lang/Long;[BLcom/google/android/gms/reminders/model/RecurrenceInfo;[BLjava/lang/Integer;Lcom/google/android/gms/reminders/model/ExternalApplicationLink;Ljava/lang/Long;Z)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/reminders/model/TaskId;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/google/android/gms/reminders/model/DateTime;Lcom/google/android/gms/reminders/model/DateTime;Lcom/google/android/gms/reminders/model/Location;Lcom/google/android/gms/reminders/model/LocationGroup;Ljava/lang/Long;[BLcom/google/android/gms/reminders/model/RecurrenceInfo;[BLjava/lang/Integer;Lcom/google/android/gms/reminders/model/ExternalApplicationLink;Ljava/lang/Long;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x2

    iput v1, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbBU:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzawl:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbBV:Ljava/lang/Long;

    iput-object p5, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbBW:Ljava/lang/Long;

    iput-object p6, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbBX:Ljava/lang/Boolean;

    iput-object p7, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbBY:Ljava/lang/Boolean;

    iput-object p8, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbBZ:Ljava/lang/Boolean;

    iput-object p9, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbCa:Ljava/lang/Boolean;

    iput-object p10, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbCb:Ljava/lang/Long;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbCg:Ljava/lang/Long;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbCh:[B

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbCj:[B

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbCk:Ljava/lang/Integer;

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbCm:Ljava/lang/Long;

    if-eqz p22, :cond_0

    check-cast p1, Lcom/google/android/gms/reminders/model/TaskIdEntity;

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbCn:Lcom/google/android/gms/reminders/model/TaskIdEntity;

    check-cast p11, Lcom/google/android/gms/reminders/model/DateTimeEntity;

    iput-object p11, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbCo:Lcom/google/android/gms/reminders/model/DateTimeEntity;

    check-cast p12, Lcom/google/android/gms/reminders/model/DateTimeEntity;

    iput-object p12, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbCp:Lcom/google/android/gms/reminders/model/DateTimeEntity;

    check-cast p13, Lcom/google/android/gms/reminders/model/LocationEntity;

    iput-object p13, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbCq:Lcom/google/android/gms/reminders/model/LocationEntity;

    check-cast p14, Lcom/google/android/gms/reminders/model/LocationGroupEntity;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbCr:Lcom/google/android/gms/reminders/model/LocationGroupEntity;

    check-cast p17, Lcom/google/android/gms/reminders/model/RecurrenceInfoEntity;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbCs:Lcom/google/android/gms/reminders/model/RecurrenceInfoEntity;

    check-cast p20, Lcom/google/android/gms/reminders/model/ExternalApplicationLinkEntity;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbCt:Lcom/google/android/gms/reminders/model/ExternalApplicationLinkEntity;

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 v1, 0x0

    :goto_1
    iput-object v1, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbCn:Lcom/google/android/gms/reminders/model/TaskIdEntity;

    if-nez p11, :cond_2

    const/4 v1, 0x0

    :goto_2
    iput-object v1, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbCo:Lcom/google/android/gms/reminders/model/DateTimeEntity;

    if-nez p12, :cond_3

    const/4 v1, 0x0

    :goto_3
    iput-object v1, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbCp:Lcom/google/android/gms/reminders/model/DateTimeEntity;

    if-nez p13, :cond_4

    const/4 v1, 0x0

    :goto_4
    iput-object v1, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbCq:Lcom/google/android/gms/reminders/model/LocationEntity;

    if-nez p14, :cond_5

    const/4 v1, 0x0

    :goto_5
    iput-object v1, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbCr:Lcom/google/android/gms/reminders/model/LocationGroupEntity;

    if-nez p17, :cond_6

    const/4 v1, 0x0

    :goto_6
    iput-object v1, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbCs:Lcom/google/android/gms/reminders/model/RecurrenceInfoEntity;

    if-nez p20, :cond_7

    const/4 v1, 0x0

    :goto_7
    iput-object v1, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbCt:Lcom/google/android/gms/reminders/model/ExternalApplicationLinkEntity;

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/android/gms/reminders/model/TaskIdEntity;

    invoke-direct {v1, p1}, Lcom/google/android/gms/reminders/model/TaskIdEntity;-><init>(Lcom/google/android/gms/reminders/model/TaskId;)V

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/google/android/gms/reminders/model/DateTimeEntity;

    invoke-direct {v1, p11}, Lcom/google/android/gms/reminders/model/DateTimeEntity;-><init>(Lcom/google/android/gms/reminders/model/DateTime;)V

    goto :goto_2

    :cond_3
    new-instance v1, Lcom/google/android/gms/reminders/model/DateTimeEntity;

    invoke-direct {v1, p12}, Lcom/google/android/gms/reminders/model/DateTimeEntity;-><init>(Lcom/google/android/gms/reminders/model/DateTime;)V

    goto :goto_3

    :cond_4
    new-instance v1, Lcom/google/android/gms/reminders/model/LocationEntity;

    invoke-direct {v1, p13}, Lcom/google/android/gms/reminders/model/LocationEntity;-><init>(Lcom/google/android/gms/reminders/model/Location;)V

    goto :goto_4

    :cond_5
    new-instance v1, Lcom/google/android/gms/reminders/model/LocationGroupEntity;

    move-object/from16 v0, p14

    invoke-direct {v1, v0}, Lcom/google/android/gms/reminders/model/LocationGroupEntity;-><init>(Lcom/google/android/gms/reminders/model/LocationGroup;)V

    goto :goto_5

    :cond_6
    new-instance v1, Lcom/google/android/gms/reminders/model/RecurrenceInfoEntity;

    move-object/from16 v0, p17

    invoke-direct {v1, v0}, Lcom/google/android/gms/reminders/model/RecurrenceInfoEntity;-><init>(Lcom/google/android/gms/reminders/model/RecurrenceInfo;)V

    goto :goto_6

    :cond_7
    new-instance v1, Lcom/google/android/gms/reminders/model/ExternalApplicationLinkEntity;

    move-object/from16 v0, p20

    invoke-direct {v1, v0}, Lcom/google/android/gms/reminders/model/ExternalApplicationLinkEntity;-><init>(Lcom/google/android/gms/reminders/model/ExternalApplicationLink;)V

    goto :goto_7
.end method

.method public static zza(Lcom/google/android/gms/reminders/model/Task;Lcom/google/android/gms/reminders/model/Task;)Z
    .locals 2

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Task;->getTaskId()Lcom/google/android/gms/reminders/model/TaskId;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getTaskId()Lcom/google/android/gms/reminders/model/TaskId;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Task;->getTaskList()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getTaskList()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Task;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Task;->getCreatedTimeMillis()Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getCreatedTimeMillis()Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Task;->getArchivedTimeMs()Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getArchivedTimeMs()Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Task;->getArchived()Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getArchived()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Task;->getDeleted()Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getDeleted()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Task;->getPinned()Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getPinned()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Task;->getSnoozed()Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getSnoozed()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Task;->getSnoozedTimeMillis()Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getSnoozedTimeMillis()Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Task;->getDueDate()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getDueDate()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Task;->getEventDate()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getEventDate()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Task;->getLocation()Lcom/google/android/gms/reminders/model/Location;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getLocation()Lcom/google/android/gms/reminders/model/Location;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Task;->getLocationGroup()Lcom/google/android/gms/reminders/model/LocationGroup;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getLocationGroup()Lcom/google/android/gms/reminders/model/LocationGroup;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Task;->getLocationSnoozedUntilMs()Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getLocationSnoozedUntilMs()Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Task;->getExtensions()[B

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getExtensions()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Task;->getRecurrenceInfo()Lcom/google/android/gms/reminders/model/RecurrenceInfo;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getRecurrenceInfo()Lcom/google/android/gms/reminders/model/RecurrenceInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Task;->getAssistance()[B

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getAssistance()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Task;->getExperiment()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getExperiment()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Task;->getExternalApplicationLink()Lcom/google/android/gms/reminders/model/ExternalApplicationLink;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getExternalApplicationLink()Lcom/google/android/gms/reminders/model/ExternalApplicationLink;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Task;->getFiredTimeMillis()Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/Task;->getFiredTimeMillis()Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static zzc(Lcom/google/android/gms/reminders/model/Task;)I
    .locals 3

    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Task;->getTaskId()Lcom/google/android/gms/reminders/model/TaskId;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Task;->getTaskList()Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Task;->getTitle()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Task;->getCreatedTimeMillis()Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Task;->getArchivedTimeMs()Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Task;->getArchived()Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Task;->getDeleted()Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Task;->getPinned()Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Task;->getSnoozed()Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Task;->getSnoozedTimeMillis()Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Task;->getDueDate()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Task;->getEventDate()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Task;->getLocation()Lcom/google/android/gms/reminders/model/Location;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Task;->getLocationGroup()Lcom/google/android/gms/reminders/model/LocationGroup;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Task;->getLocationSnoozedUntilMs()Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Task;->getExtensions()[B

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Task;->getRecurrenceInfo()Lcom/google/android/gms/reminders/model/RecurrenceInfo;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Task;->getAssistance()[B

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Task;->getExperiment()Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Task;->getExternalApplicationLink()Lcom/google/android/gms/reminders/model/ExternalApplicationLink;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/Task;->getFiredTimeMillis()Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzw;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
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

    invoke-virtual {p0}, Lcom/google/android/gms/reminders/model/TaskEntity;->zzGw()Lcom/google/android/gms/reminders/model/Task;

    move-result-object v0

    return-object v0
.end method

.method public getArchived()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbBX:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getArchivedTimeMs()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbBW:Ljava/lang/Long;

    return-object v0
.end method

.method public getAssistance()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbCj:[B

    return-object v0
.end method

.method public getCreatedTimeMillis()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbBV:Ljava/lang/Long;

    return-object v0
.end method

.method public getDeleted()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbBY:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getDueDate()Lcom/google/android/gms/reminders/model/DateTime;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbCo:Lcom/google/android/gms/reminders/model/DateTimeEntity;

    return-object v0
.end method

.method public getEventDate()Lcom/google/android/gms/reminders/model/DateTime;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbCp:Lcom/google/android/gms/reminders/model/DateTimeEntity;

    return-object v0
.end method

.method public getExperiment()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbCk:Ljava/lang/Integer;

    return-object v0
.end method

.method public getExtensions()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbCh:[B

    return-object v0
.end method

.method public getExternalApplicationLink()Lcom/google/android/gms/reminders/model/ExternalApplicationLink;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbCt:Lcom/google/android/gms/reminders/model/ExternalApplicationLinkEntity;

    return-object v0
.end method

.method public getFiredTimeMillis()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbCm:Ljava/lang/Long;

    return-object v0
.end method

.method public getLocation()Lcom/google/android/gms/reminders/model/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbCq:Lcom/google/android/gms/reminders/model/LocationEntity;

    return-object v0
.end method

.method public getLocationGroup()Lcom/google/android/gms/reminders/model/LocationGroup;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbCr:Lcom/google/android/gms/reminders/model/LocationGroupEntity;

    return-object v0
.end method

.method public getLocationSnoozedUntilMs()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbCg:Ljava/lang/Long;

    return-object v0
.end method

.method public getPinned()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbBZ:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getRecurrenceInfo()Lcom/google/android/gms/reminders/model/RecurrenceInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbCs:Lcom/google/android/gms/reminders/model/RecurrenceInfoEntity;

    return-object v0
.end method

.method public getSnoozed()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbCa:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSnoozedTimeMillis()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbCb:Ljava/lang/Long;

    return-object v0
.end method

.method public getTaskId()Lcom/google/android/gms/reminders/model/TaskId;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbCn:Lcom/google/android/gms/reminders/model/TaskIdEntity;

    return-object v0
.end method

.method public getTaskList()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzbBU:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/TaskEntity;->zzawl:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/reminders/model/TaskEntity;->zzc(Lcom/google/android/gms/reminders/model/Task;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/reminders/model/zzq;->zza(Lcom/google/android/gms/reminders/model/TaskEntity;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzGw()Lcom/google/android/gms/reminders/model/Task;
    .locals 0

    return-object p0
.end method
