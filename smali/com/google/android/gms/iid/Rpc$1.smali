.class Lcom/google/android/gms/iid/Rpc$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/iid/Rpc;->zzxG()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaVD:Lcom/google/android/gms/iid/Rpc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/iid/Rpc;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/iid/Rpc$1;->zzaVD:Lcom/google/android/gms/iid/Rpc;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/iid/Rpc$1;->zzaVD:Lcom/google/android/gms/iid/Rpc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/iid/Rpc;->handleIncomingMessenger(Landroid/os/Message;)V

    return-void
.end method
