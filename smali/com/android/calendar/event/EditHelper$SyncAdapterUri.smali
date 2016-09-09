.class public Lcom/android/calendar/event/EditHelper$SyncAdapterUri;
.super Ljava/lang/Object;
.source "EditHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/EditHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyncAdapterUri"
.end annotation


# instance fields
.field private final mUri:Landroid/net/Uri;

.field private mUsed:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/event/EditHelper$SyncAdapterUri;->mUsed:Z

    .line 171
    invoke-static {p1, p2}, Lcom/android/calendar/event/EditHelper;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditHelper$SyncAdapterUri;->mUri:Landroid/net/Uri;

    .line 172
    return-void
.end method


# virtual methods
.method public final getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/event/EditHelper$SyncAdapterUri;->mUsed:Z

    .line 176
    iget-object v0, p0, Lcom/android/calendar/event/EditHelper$SyncAdapterUri;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public used()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/android/calendar/event/EditHelper$SyncAdapterUri;->mUsed:Z

    return v0
.end method
