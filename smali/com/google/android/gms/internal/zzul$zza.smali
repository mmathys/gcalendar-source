.class public abstract Lcom/google/android/gms/internal/zzul$zza;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/zzul;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzul;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzul$zza$zza;
    }
.end annotation


# direct methods
.method public static zzgb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzul;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.google.android.gms.reminders.internal.IRemindersService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/gms/internal/zzul;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/zzul;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzul$zza$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzul$zza$zza;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const-string v0, "com.google.android.gms.reminders.internal.IRemindersService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v3

    goto :goto_0

    :sswitch_1
    const-string v0, "com.google.android.gms.reminders.internal.IRemindersService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzuj$zza;->zzga(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzuj;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/reminders/LoadRemindersOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/LoadRemindersOptions;

    :goto_1
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/internal/zzul$zza;->zza(Lcom/google/android/gms/internal/zzuj;Lcom/google/android/gms/reminders/LoadRemindersOptions;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_1

    :sswitch_2
    const-string v0, "com.google.android.gms.reminders.internal.IRemindersService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzuj$zza;->zzga(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzuj;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzul$zza;->zza(Lcom/google/android/gms/internal/zzuj;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto :goto_0

    :sswitch_3
    const-string v0, "com.google.android.gms.reminders.internal.IRemindersService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzuj$zza;->zzga(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzuj;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/reminders/model/TaskEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/model/TaskEntity;

    :goto_2
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/internal/zzul$zza;->zza(Lcom/google/android/gms/internal/zzuj;Lcom/google/android/gms/reminders/model/TaskEntity;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_2

    :sswitch_4
    const-string v0, "com.google.android.gms.reminders.internal.IRemindersService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzuj$zza;->zzga(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzuj;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/reminders/model/TaskEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/model/TaskEntity;

    :goto_3
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/internal/zzul$zza;->zzb(Lcom/google/android/gms/internal/zzuj;Lcom/google/android/gms/reminders/model/TaskEntity;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto/16 :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_3

    :sswitch_5
    const-string v0, "com.google.android.gms.reminders.internal.IRemindersService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzuj$zza;->zzga(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzuj;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/android/gms/reminders/model/TaskIdEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/model/TaskIdEntity;

    :goto_4
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/internal/zzul$zza;->zza(Lcom/google/android/gms/internal/zzuj;Lcom/google/android/gms/reminders/model/TaskIdEntity;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto/16 :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_4

    :sswitch_6
    const-string v0, "com.google.android.gms.reminders.internal.IRemindersService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzuj$zza;->zzga(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzuj;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/google/android/gms/reminders/model/TaskIdEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/model/TaskIdEntity;

    :goto_5
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/internal/zzul$zza;->zzb(Lcom/google/android/gms/internal/zzuj;Lcom/google/android/gms/reminders/model/TaskIdEntity;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto/16 :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_5

    :sswitch_7
    const-string v0, "com.google.android.gms.reminders.internal.IRemindersService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzuj$zza;->zzga(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzuj;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzul$zza;->zzb(Lcom/google/android/gms/internal/zzuj;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "com.google.android.gms.reminders.internal.IRemindersService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzuj$zza;->zzga(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzuj;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/google/android/gms/reminders/model/TaskEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/model/TaskEntity;

    :goto_6
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/internal/zzul$zza;->zzc(Lcom/google/android/gms/internal/zzuj;Lcom/google/android/gms/reminders/model/TaskEntity;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto/16 :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_6

    :sswitch_9
    const-string v0, "com.google.android.gms.reminders.internal.IRemindersService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzuj$zza;->zzga(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzuj;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/google/android/gms/reminders/model/TaskEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/model/TaskEntity;

    move-object v2, v0

    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;

    :goto_8
    invoke-virtual {p0, v4, v5, v2, v0}, Lcom/google/android/gms/internal/zzul$zza;->zza(Lcom/google/android/gms/internal/zzuj;Ljava/lang/String;Lcom/google/android/gms/reminders/model/TaskEntity;Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto/16 :goto_0

    :cond_6
    move-object v2, v1

    goto :goto_7

    :cond_7
    move-object v0, v1

    goto :goto_8

    :sswitch_a
    const-string v0, "com.google.android.gms.reminders.internal.IRemindersService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzuj$zza;->zzga(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzuj;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;

    :goto_9
    invoke-virtual {p0, v2, v4, v0}, Lcom/google/android/gms/internal/zzul$zza;->zza(Lcom/google/android/gms/internal/zzuj;Ljava/lang/String;Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto/16 :goto_0

    :cond_8
    move-object v0, v1

    goto :goto_9

    :sswitch_b
    const-string v0, "com.google.android.gms.reminders.internal.IRemindersService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzuj$zza;->zzga(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzuj;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/google/android/gms/reminders/model/TaskEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/model/TaskEntity;

    move-object v2, v0

    :goto_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;

    :goto_b
    invoke-virtual {p0, v4, v5, v2, v0}, Lcom/google/android/gms/internal/zzul$zza;->zzb(Lcom/google/android/gms/internal/zzuj;Ljava/lang/String;Lcom/google/android/gms/reminders/model/TaskEntity;Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto/16 :goto_0

    :cond_9
    move-object v2, v1

    goto :goto_a

    :cond_a
    move-object v0, v1

    goto :goto_b

    :sswitch_c
    const-string v0, "com.google.android.gms.reminders.internal.IRemindersService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzuj$zza;->zzga(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzuj;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/google/android/gms/reminders/model/TaskEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/model/TaskEntity;

    :goto_c
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/internal/zzul$zza;->zzd(Lcom/google/android/gms/internal/zzuj;Lcom/google/android/gms/reminders/model/TaskEntity;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto/16 :goto_0

    :cond_b
    move-object v0, v1

    goto :goto_c

    :sswitch_d
    const-string v0, "com.google.android.gms.reminders.internal.IRemindersService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzuj$zza;->zzga(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzuj;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/google/android/gms/reminders/model/TaskEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/model/TaskEntity;

    move-object v2, v0

    :goto_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;

    :goto_e
    invoke-virtual {p0, v4, v5, v2, v0}, Lcom/google/android/gms/internal/zzul$zza;->zzc(Lcom/google/android/gms/internal/zzuj;Ljava/lang/String;Lcom/google/android/gms/reminders/model/TaskEntity;Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto/16 :goto_0

    :cond_c
    move-object v2, v1

    goto :goto_d

    :cond_d
    move-object v0, v1

    goto :goto_e

    :sswitch_e
    const-string v0, "com.google.android.gms.reminders.internal.IRemindersService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzul$zza;->zzGe()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "com.google.android.gms.reminders.internal.IRemindersService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzuj$zza;->zzga(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzuj;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/reminders/model/TaskEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzul$zza;->zza(Lcom/google/android/gms/internal/zzuj;Ljava/util/List;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "com.google.android.gms.reminders.internal.IRemindersService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzuj$zza;->zzga(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzuj;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/google/android/gms/reminders/model/TaskEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/model/TaskEntity;

    move-object v2, v0

    :goto_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/google/android/gms/reminders/CreateReminderOptionsInternal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/CreateReminderOptionsInternal;

    :goto_10
    invoke-virtual {p0, v4, v2, v0}, Lcom/google/android/gms/internal/zzul$zza;->zza(Lcom/google/android/gms/internal/zzuj;Lcom/google/android/gms/reminders/model/TaskEntity;Lcom/google/android/gms/reminders/CreateReminderOptionsInternal;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto/16 :goto_0

    :cond_e
    move-object v2, v1

    goto :goto_f

    :cond_f
    move-object v0, v1

    goto :goto_10

    :sswitch_11
    const-string v0, "com.google.android.gms.reminders.internal.IRemindersService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzuj$zza;->zzga(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzuj;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzul$zza;->zzc(Lcom/google/android/gms/internal/zzuj;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "com.google.android.gms.reminders.internal.IRemindersService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzuj$zza;->zzga(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzuj;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/google/android/gms/reminders/model/CustomizedSnoozePresetEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/model/CustomizedSnoozePresetEntity;

    :goto_11
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/internal/zzul$zza;->zza(Lcom/google/android/gms/internal/zzuj;Lcom/google/android/gms/reminders/model/CustomizedSnoozePresetEntity;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto/16 :goto_0

    :cond_10
    move-object v0, v1

    goto :goto_11

    :sswitch_13
    const-string v0, "com.google.android.gms.reminders.internal.IRemindersService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzuj$zza;->zzga(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzuj;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/google/android/gms/reminders/AccountState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/AccountState;

    :goto_12
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/internal/zzul$zza;->zza(Lcom/google/android/gms/internal/zzuj;Lcom/google/android/gms/reminders/AccountState;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto/16 :goto_0

    :cond_11
    move-object v0, v1

    goto :goto_12

    :sswitch_14
    const-string v0, "com.google.android.gms.reminders.internal.IRemindersService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzuj$zza;->zzga(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzuj;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzul$zza;->zzd(Lcom/google/android/gms/internal/zzuj;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "com.google.android.gms.reminders.internal.IRemindersService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzuj$zza;->zzga(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzuj;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/google/android/gms/reminders/ReindexDueDatesOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/ReindexDueDatesOptions;

    :goto_13
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/internal/zzul$zza;->zza(Lcom/google/android/gms/internal/zzuj;Lcom/google/android/gms/reminders/ReindexDueDatesOptions;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto/16 :goto_0

    :cond_12
    move-object v0, v1

    goto :goto_13

    :sswitch_16
    const-string v0, "com.google.android.gms.reminders.internal.IRemindersService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzuj$zza;->zzga(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzuj;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/google/android/gms/reminders/ReindexDueDatesOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/reminders/ReindexDueDatesOptions;

    :goto_14
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/internal/zzul$zza;->zzb(Lcom/google/android/gms/internal/zzuj;Lcom/google/android/gms/reminders/ReindexDueDatesOptions;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto/16 :goto_0

    :cond_13
    move-object v0, v1

    goto :goto_14

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
