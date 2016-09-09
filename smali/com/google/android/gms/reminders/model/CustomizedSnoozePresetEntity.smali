.class public Lcom/google/android/gms/reminders/model/CustomizedSnoozePresetEntity;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/reminders/model/CustomizedSnoozePreset;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/reminders/model/CustomizedSnoozePresetEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mVersionCode:I

.field private final zzbAF:Lcom/google/android/gms/reminders/model/TimeEntity;

.field private final zzbAG:Lcom/google/android/gms/reminders/model/TimeEntity;

.field private final zzbAH:Lcom/google/android/gms/reminders/model/TimeEntity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/reminders/model/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/reminders/model/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/reminders/model/CustomizedSnoozePresetEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/reminders/model/TimeEntity;Lcom/google/android/gms/reminders/model/TimeEntity;Lcom/google/android/gms/reminders/model/TimeEntity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/reminders/model/CustomizedSnoozePresetEntity;->zzbAF:Lcom/google/android/gms/reminders/model/TimeEntity;

    iput-object p3, p0, Lcom/google/android/gms/reminders/model/CustomizedSnoozePresetEntity;->zzbAG:Lcom/google/android/gms/reminders/model/TimeEntity;

    iput-object p4, p0, Lcom/google/android/gms/reminders/model/CustomizedSnoozePresetEntity;->zzbAH:Lcom/google/android/gms/reminders/model/TimeEntity;

    iput p1, p0, Lcom/google/android/gms/reminders/model/CustomizedSnoozePresetEntity;->mVersionCode:I

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/reminders/model/Time;Lcom/google/android/gms/reminders/model/Time;Lcom/google/android/gms/reminders/model/Time;Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/reminders/model/CustomizedSnoozePresetEntity;->mVersionCode:I

    if-eqz p4, :cond_0

    check-cast p1, Lcom/google/android/gms/reminders/model/TimeEntity;

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/CustomizedSnoozePresetEntity;->zzbAF:Lcom/google/android/gms/reminders/model/TimeEntity;

    check-cast p2, Lcom/google/android/gms/reminders/model/TimeEntity;

    iput-object p2, p0, Lcom/google/android/gms/reminders/model/CustomizedSnoozePresetEntity;->zzbAG:Lcom/google/android/gms/reminders/model/TimeEntity;

    check-cast p3, Lcom/google/android/gms/reminders/model/TimeEntity;

    iput-object p3, p0, Lcom/google/android/gms/reminders/model/CustomizedSnoozePresetEntity;->zzbAH:Lcom/google/android/gms/reminders/model/TimeEntity;

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/reminders/model/CustomizedSnoozePresetEntity;->zzbAF:Lcom/google/android/gms/reminders/model/TimeEntity;

    if-nez p2, :cond_2

    move-object v0, v1

    :goto_2
    iput-object v0, p0, Lcom/google/android/gms/reminders/model/CustomizedSnoozePresetEntity;->zzbAG:Lcom/google/android/gms/reminders/model/TimeEntity;

    if-nez p3, :cond_3

    :goto_3
    iput-object v1, p0, Lcom/google/android/gms/reminders/model/CustomizedSnoozePresetEntity;->zzbAH:Lcom/google/android/gms/reminders/model/TimeEntity;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/reminders/model/TimeEntity;

    invoke-direct {v0, p1}, Lcom/google/android/gms/reminders/model/TimeEntity;-><init>(Lcom/google/android/gms/reminders/model/Time;)V

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/google/android/gms/reminders/model/TimeEntity;

    invoke-direct {v0, p2}, Lcom/google/android/gms/reminders/model/TimeEntity;-><init>(Lcom/google/android/gms/reminders/model/Time;)V

    goto :goto_2

    :cond_3
    new-instance v1, Lcom/google/android/gms/reminders/model/TimeEntity;

    invoke-direct {v1, p3}, Lcom/google/android/gms/reminders/model/TimeEntity;-><init>(Lcom/google/android/gms/reminders/model/Time;)V

    goto :goto_3
.end method

.method public static zza(Lcom/google/android/gms/reminders/model/CustomizedSnoozePreset;Lcom/google/android/gms/reminders/model/CustomizedSnoozePreset;)Z
    .locals 2

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/CustomizedSnoozePreset;->getMorningCustomizedTime()Lcom/google/android/gms/reminders/model/Time;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/CustomizedSnoozePreset;->getMorningCustomizedTime()Lcom/google/android/gms/reminders/model/Time;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/CustomizedSnoozePreset;->getAfternoonCustomizedTime()Lcom/google/android/gms/reminders/model/Time;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/CustomizedSnoozePreset;->getAfternoonCustomizedTime()Lcom/google/android/gms/reminders/model/Time;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/CustomizedSnoozePreset;->getEveningCustomizedTime()Lcom/google/android/gms/reminders/model/Time;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/CustomizedSnoozePreset;->getEveningCustomizedTime()Lcom/google/android/gms/reminders/model/Time;

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

.method public static zzb(Lcom/google/android/gms/reminders/model/CustomizedSnoozePreset;)I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/CustomizedSnoozePreset;->getMorningCustomizedTime()Lcom/google/android/gms/reminders/model/Time;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/CustomizedSnoozePreset;->getAfternoonCustomizedTime()Lcom/google/android/gms/reminders/model/Time;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-interface {p0}, Lcom/google/android/gms/reminders/model/CustomizedSnoozePreset;->getEveningCustomizedTime()Lcom/google/android/gms/reminders/model/Time;

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

    instance-of v0, p1, Lcom/google/android/gms/reminders/model/CustomizedSnoozePreset;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/reminders/model/CustomizedSnoozePreset;

    invoke-static {p0, p1}, Lcom/google/android/gms/reminders/model/CustomizedSnoozePresetEntity;->zza(Lcom/google/android/gms/reminders/model/CustomizedSnoozePreset;Lcom/google/android/gms/reminders/model/CustomizedSnoozePreset;)Z

    move-result v0

    goto :goto_0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/reminders/model/CustomizedSnoozePresetEntity;->zzGA()Lcom/google/android/gms/reminders/model/CustomizedSnoozePreset;

    move-result-object v0

    return-object v0
.end method

.method public getAfternoonCustomizedTime()Lcom/google/android/gms/reminders/model/Time;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/CustomizedSnoozePresetEntity;->zzbAG:Lcom/google/android/gms/reminders/model/TimeEntity;

    return-object v0
.end method

.method public getEveningCustomizedTime()Lcom/google/android/gms/reminders/model/Time;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/CustomizedSnoozePresetEntity;->zzbAH:Lcom/google/android/gms/reminders/model/TimeEntity;

    return-object v0
.end method

.method public getMorningCustomizedTime()Lcom/google/android/gms/reminders/model/Time;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/CustomizedSnoozePresetEntity;->zzbAF:Lcom/google/android/gms/reminders/model/TimeEntity;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/reminders/model/CustomizedSnoozePresetEntity;->zzb(Lcom/google/android/gms/reminders/model/CustomizedSnoozePreset;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/reminders/model/zzd;->zza(Lcom/google/android/gms/reminders/model/CustomizedSnoozePresetEntity;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzGA()Lcom/google/android/gms/reminders/model/CustomizedSnoozePreset;
    .locals 0

    return-object p0
.end method
