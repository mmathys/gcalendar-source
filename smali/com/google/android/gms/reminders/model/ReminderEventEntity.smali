.class public Lcom/google/android/gms/reminders/model/ReminderEventEntity;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/google/android/gms/reminders/model/ReminderEvent;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/reminders/model/ReminderEventEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzPQ:I

.field private final zzRy:Ljava/lang/String;

.field private final zzbBS:Lcom/google/android/gms/reminders/model/Task;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/reminders/model/ReminderEventEntity$1;

    invoke-direct {v0}, Lcom/google/android/gms/reminders/model/ReminderEventEntity$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/reminders/model/ReminderEventEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/reminders/model/ReminderEventEntity;->zzPQ:I

    const-class v0, Lcom/google/android/gms/reminders/model/Task;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/model/Task;

    iput-object v0, p0, Lcom/google/android/gms/reminders/model/ReminderEventEntity;->zzbBS:Lcom/google/android/gms/reminders/model/Task;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/reminders/model/ReminderEventEntity;->zzRy:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/gms/reminders/model/ReminderEventEntity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/reminders/model/ReminderEventEntity;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/reminders/model/ReminderEvent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/ReminderEvent;->getType()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/reminders/model/ReminderEventEntity;->zzPQ:I

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/ReminderEvent;->getTask()Lcom/google/android/gms/reminders/model/Task;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/reminders/model/Task;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/model/Task;

    iput-object v0, p0, Lcom/google/android/gms/reminders/model/ReminderEventEntity;->zzbBS:Lcom/google/android/gms/reminders/model/Task;

    invoke-interface {p1}, Lcom/google/android/gms/reminders/model/ReminderEvent;->getAccountName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/reminders/model/ReminderEventEntity;->zzRy:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/reminders/model/ReminderEventEntity;->zzGf()Lcom/google/android/gms/reminders/model/ReminderEvent;

    move-result-object v0

    return-object v0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/ReminderEventEntity;->zzRy:Ljava/lang/String;

    return-object v0
.end method

.method public getTask()Lcom/google/android/gms/reminders/model/Task;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/ReminderEventEntity;->zzbBS:Lcom/google/android/gms/reminders/model/Task;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/reminders/model/ReminderEventEntity;->zzPQ:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/reminders/model/ReminderEventEntity;->zzPQ:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/ReminderEventEntity;->zzbBS:Lcom/google/android/gms/reminders/model/Task;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/google/android/gms/reminders/model/ReminderEventEntity;->zzRy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public zzGf()Lcom/google/android/gms/reminders/model/ReminderEvent;
    .locals 0

    return-object p0
.end method
