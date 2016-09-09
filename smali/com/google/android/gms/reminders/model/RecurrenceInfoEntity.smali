.class public Lcom/google/android/gms/reminders/model/RecurrenceInfoEntity;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/reminders/model/RecurrenceInfo;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/reminders/model/RecurrenceInfoEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mVersionCode:I

.field private final zzbBM:Ljava/lang/String;

.field private final zzbBN:Ljava/lang/Boolean;

.field private final zzbBO:Ljava/lang/Boolean;

.field private final zzbBP:Lcom/google/android/gms/reminders/model/RecurrenceEntity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/reminders/model/zzn;

    invoke-direct {v0}, Lcom/google/android/gms/reminders/model/zzn;-><init>()V

    sput-object v0, Lcom/google/android/gms/reminders/model/RecurrenceInfoEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/reminders/model/RecurrenceEntity;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/reminders/model/RecurrenceInfoEntity;->zzbBP:Lcom/google/android/gms/reminders/model/RecurrenceEntity;

    iput-object p3, p0, Lcom/google/android/gms/reminders/model/RecurrenceInfoEntity;->zzbBM:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/reminders/model/RecurrenceInfoEntity;->zzbBN:Ljava/lang/Boolean;

    iput-object p5, p0, Lcom/google/android/gms/reminders/model/RecurrenceInfoEntity;->zzbBO:Ljava/lang/Boolean;

    iput p1, p0, Lcom/google/android/gms/reminders/model/RecurrenceInfoEntity;->mVersionCode:I

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/reminders/model/Recurrence;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/reminders/model/RecurrenceInfoEntity;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/reminders/model/RecurrenceInfoEntity;->zzbBM:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/reminders/model/RecurrenceInfoEntity;->zzbBN:Ljava/lang/Boolean;

    iput-object p4, p0, Lcom/google/android/gms/reminders/model/RecurrenceInfoEntity;->zzbBO:Ljava/lang/Boolean;

    if-eqz p5, :cond_0

    check-cast p1, Lcom/google/android/gms/reminders/model/RecurrenceEntity;

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/RecurrenceInfoEntity;->zzbBP:Lcom/google/android/gms/reminders/model/RecurrenceEntity;

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/reminders/model/RecurrenceInfoEntity;->zzbBP:Lcom/google/android/gms/reminders/model/RecurrenceEntity;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/reminders/model/RecurrenceEntity;

    invoke-direct {v0, p1}, Lcom/google/android/gms/reminders/model/RecurrenceEntity;-><init>(Lcom/google/android/gms/reminders/model/Recurrence;)V

    goto :goto_1
.end method

.method public constructor <init>(Lcom/google/android/gms/reminders/model/RecurrenceInfo;)V
    .locals 6

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/RecurrenceInfo;->getRecurrence()Lcom/google/android/gms/reminders/model/Recurrence;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/RecurrenceInfo;->getRecurrenceId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/RecurrenceInfo;->getMaster()Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/RecurrenceInfo;->getExceptional()Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/reminders/model/RecurrenceInfoEntity;-><init>(Lcom/google/android/gms/reminders/model/Recurrence;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Z)V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/reminders/model/RecurrenceInfo;)I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/RecurrenceInfo;->getRecurrence()Lcom/google/android/gms/reminders/model/Recurrence;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/RecurrenceInfo;->getRecurrenceId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/RecurrenceInfo;->getMaster()Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/RecurrenceInfo;->getExceptional()Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzw;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static zza(Lcom/google/android/gms/reminders/model/RecurrenceInfo;Lcom/google/android/gms/reminders/model/RecurrenceInfo;)Z
    .locals 2

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/RecurrenceInfo;->getRecurrence()Lcom/google/android/gms/reminders/model/Recurrence;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/RecurrenceInfo;->getRecurrence()Lcom/google/android/gms/reminders/model/Recurrence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/RecurrenceInfo;->getRecurrenceId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/RecurrenceInfo;->getRecurrenceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/RecurrenceInfo;->getMaster()Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/RecurrenceInfo;->getMaster()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/RecurrenceInfo;->getExceptional()Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/RecurrenceInfo;->getExceptional()Ljava/lang/Boolean;

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


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/android/gms/reminders/model/RecurrenceInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/reminders/model/RecurrenceInfo;

    invoke-static {p0, p1}, Lcom/google/android/gms/reminders/model/RecurrenceInfoEntity;->zza(Lcom/google/android/gms/reminders/model/RecurrenceInfo;Lcom/google/android/gms/reminders/model/RecurrenceInfo;)Z

    move-result v0

    goto :goto_0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/reminders/model/RecurrenceInfoEntity;->zzGs()Lcom/google/android/gms/reminders/model/RecurrenceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getExceptional()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/RecurrenceInfoEntity;->zzbBO:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getMaster()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/RecurrenceInfoEntity;->zzbBN:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getRecurrence()Lcom/google/android/gms/reminders/model/Recurrence;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/RecurrenceInfoEntity;->zzbBP:Lcom/google/android/gms/reminders/model/RecurrenceEntity;

    return-object v0
.end method

.method public getRecurrenceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/RecurrenceInfoEntity;->zzbBM:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/reminders/model/RecurrenceInfoEntity;->zza(Lcom/google/android/gms/reminders/model/RecurrenceInfo;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/reminders/model/zzn;->zza(Lcom/google/android/gms/reminders/model/RecurrenceInfoEntity;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzGs()Lcom/google/android/gms/reminders/model/RecurrenceInfo;
    .locals 0

    return-object p0
.end method
