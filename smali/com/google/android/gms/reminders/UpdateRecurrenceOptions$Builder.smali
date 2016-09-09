.class public Lcom/google/android/gms/reminders/UpdateRecurrenceOptions$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zzbyT:Ljava/lang/Long;

.field private zzbyU:Ljava/lang/Integer;

.field private zzbyV:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;
    .locals 5

    new-instance v0, Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;

    iget-object v1, p0, Lcom/google/android/gms/reminders/UpdateRecurrenceOptions$Builder;->zzbyU:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/google/android/gms/reminders/UpdateRecurrenceOptions$Builder;->zzbyV:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/google/android/gms/reminders/UpdateRecurrenceOptions$Builder;->zzbyT:Ljava/lang/Long;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/reminders/UpdateRecurrenceOptions;-><init>(Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/google/android/gms/reminders/UpdateRecurrenceOptions$1;)V

    return-object v0
.end method

.method public setReferenceTimeMillis(J)Lcom/google/android/gms/reminders/UpdateRecurrenceOptions$Builder;
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/reminders/UpdateRecurrenceOptions$Builder;->zzbyT:Ljava/lang/Long;

    return-object p0
.end method

.method public setUpdateMode(I)Lcom/google/android/gms/reminders/UpdateRecurrenceOptions$Builder;
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    const-string v1, "Invalid updateMode"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/reminders/UpdateRecurrenceOptions$Builder;->zzbyU:Ljava/lang/Integer;

    return-object p0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
