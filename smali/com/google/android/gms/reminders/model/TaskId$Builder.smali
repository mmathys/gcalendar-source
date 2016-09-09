.class public Lcom/google/android/gms/reminders/model/TaskId$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/reminders/model/TaskId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zzbCu:Ljava/lang/String;

.field private zzbCv:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/reminders/model/TaskId;
    .locals 4

    new-instance v0, Lcom/google/android/gms/reminders/model/TaskIdEntity;

    iget-object v1, p0, Lcom/google/android/gms/reminders/model/TaskId$Builder;->zzbCu:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/reminders/model/TaskId$Builder;->zzbCv:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/reminders/model/TaskIdEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public setClientAssignedId(Ljava/lang/String;)Lcom/google/android/gms/reminders/model/TaskId$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/reminders/model/TaskId$Builder;->zzbCu:Ljava/lang/String;

    return-object p0
.end method
