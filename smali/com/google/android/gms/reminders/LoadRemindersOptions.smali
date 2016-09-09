.class public Lcom/google/android/gms/reminders/LoadRemindersOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/reminders/LoadRemindersOptions$1;,
        Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/reminders/LoadRemindersOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_OPTION:Lcom/google/android/gms/reminders/LoadRemindersOptions;


# instance fields
.field private final mRecurrenceIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mVersionCode:I

.field private final zzbkQ:I

.field private final zzbyE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbyF:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbyG:Ljava/lang/Long;

.field private final zzbyH:Ljava/lang/Long;

.field private final zzbyI:Ljava/lang/Long;

.field private final zzbyJ:Ljava/lang/Long;

.field private final zzbyK:Z

.field private final zzbyL:I

.field private final zzbyM:Z

.field private final zzbyN:Z

.field private final zzbyO:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/reminders/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/reminders/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/reminders/LoadRemindersOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/reminders/LoadRemindersOptions$Builder;->build()Lcom/google/android/gms/reminders/LoadRemindersOptions;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/reminders/LoadRemindersOptions;->DEFAULT_OPTION:Lcom/google/android/gms/reminders/LoadRemindersOptions;

    return-void
.end method

.method constructor <init>(ILjava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ZIZZIILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "ZIZZII",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions;->zzbyE:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions;->zzbyF:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions;->zzbyG:Ljava/lang/Long;

    iput-object p5, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions;->zzbyH:Ljava/lang/Long;

    iput-object p6, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions;->zzbyI:Ljava/lang/Long;

    iput-object p7, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions;->zzbyJ:Ljava/lang/Long;

    iput-boolean p8, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions;->zzbyK:Z

    iput p9, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions;->zzbyL:I

    iput-boolean p10, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions;->zzbyM:Z

    iput-boolean p11, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions;->zzbyN:Z

    iput p12, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions;->zzbyO:I

    iput p13, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions;->zzbkQ:I

    iput-object p14, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions;->mRecurrenceIds:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ZIZZIILjava/util/List;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "ZIZZII",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x4

    move-object v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v14, p13

    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/reminders/LoadRemindersOptions;-><init>(ILjava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ZIZZIILjava/util/List;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ZIZZIILjava/util/List;Lcom/google/android/gms/reminders/LoadRemindersOptions$1;)V
    .locals 0

    invoke-direct/range {p0 .. p13}, Lcom/google/android/gms/reminders/LoadRemindersOptions;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ZIZZIILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getClientAssignedIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions;->zzbyE:Ljava/util/List;

    return-object v0
.end method

.method public getCollapseMode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions;->zzbyL:I

    return v0
.end method

.method public getDueDateAfter()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions;->zzbyG:Ljava/lang/Long;

    return-object v0
.end method

.method public getDueDateBefore()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions;->zzbyH:Ljava/lang/Long;

    return-object v0
.end method

.method public getExcludeDueDateAfter()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions;->zzbyI:Ljava/lang/Long;

    return-object v0
.end method

.method public getExcludeDueDateBefore()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions;->zzbyJ:Ljava/lang/Long;

    return-object v0
.end method

.method public getExcludeExceptions()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions;->zzbyM:Z

    return v0
.end method

.method public getIncludeArchived()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions;->zzbyK:Z

    return v0
.end method

.method public getIncludeRecurrencesOnly()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions;->zzbyN:Z

    return v0
.end method

.method public getLoadReminderType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions;->zzbyO:I

    return v0
.end method

.method public getRecurrenceIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions;->mRecurrenceIds:Ljava/util/List;

    return-object v0
.end method

.method public getSortOrder()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions;->zzbkQ:I

    return v0
.end method

.method public getTaskListIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/reminders/LoadRemindersOptions;->zzbyF:Ljava/util/List;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/reminders/zzc;->zza(Lcom/google/android/gms/reminders/LoadRemindersOptions;Landroid/os/Parcel;I)V

    return-void
.end method
