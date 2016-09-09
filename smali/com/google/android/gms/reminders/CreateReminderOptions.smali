.class public Lcom/google/android/gms/reminders/CreateReminderOptions;
.super Ljava/lang/Object;


# instance fields
.field private final zzbyy:Lcom/google/android/gms/reminders/CreateReminderOptionsInternal;

.field private final zzbyz:Lcom/google/android/gms/reminders/RemindersApi$ReminderCreatedListener;


# virtual methods
.method public getInternalOptions()Lcom/google/android/gms/reminders/CreateReminderOptionsInternal;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/CreateReminderOptions;->zzbyy:Lcom/google/android/gms/reminders/CreateReminderOptionsInternal;

    return-object v0
.end method

.method public getListener()Lcom/google/android/gms/reminders/RemindersApi$ReminderCreatedListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/reminders/CreateReminderOptions;->zzbyz:Lcom/google/android/gms/reminders/RemindersApi$ReminderCreatedListener;

    return-object v0
.end method
