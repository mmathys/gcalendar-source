.class public Lcom/google/android/gms/feedback/FeedbackOptions$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/feedback/FeedbackOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAccountInUse:Ljava/lang/String;

.field private mCategoryTag:Ljava/lang/String;

.field private mDescription:Ljava/lang/String;

.field private mExcludePii:Z

.field private mFileTeleporters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/feedback/FileTeleporter;",
            ">;"
        }
    .end annotation
.end field

.field private mLogOptions:Lcom/google/android/gms/feedback/LogOptions;

.field private mPsdBundle:Landroid/os/Bundle;

.field private mThemeSettings:Lcom/google/android/gms/feedback/ThemeSettings;

.field private zzaFX:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/feedback/FeedbackOptions$Builder;->mPsdBundle:Landroid/os/Bundle;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/feedback/FeedbackOptions$Builder;->mFileTeleporters:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addProductSpecificBinaryData(Ljava/lang/String;Ljava/lang/String;[B)Lcom/google/android/gms/feedback/FeedbackOptions$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/feedback/FeedbackOptions$Builder;->mFileTeleporters:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/gms/feedback/FileTeleporter;

    invoke-direct {v1, p3, p2, p1}, Lcom/google/android/gms/feedback/FileTeleporter;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addPsd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/feedback/FeedbackOptions$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/feedback/FeedbackOptions$Builder;->mPsdBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public addPsdBundle(Landroid/os/Bundle;)Lcom/google/android/gms/feedback/FeedbackOptions$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/feedback/FeedbackOptions$Builder;->mPsdBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    return-object p0
.end method

.method public build()Lcom/google/android/gms/feedback/FeedbackOptions;
    .locals 2

    new-instance v0, Lcom/google/android/gms/feedback/FeedbackOptions;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/feedback/FeedbackOptions;-><init>(Lcom/google/android/gms/feedback/FeedbackOptions$1;)V

    iget-object v1, p0, Lcom/google/android/gms/feedback/FeedbackOptions$Builder;->zzaFX:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/google/android/gms/feedback/FeedbackOptions;->zza(Lcom/google/android/gms/feedback/FeedbackOptions;Landroid/graphics/Bitmap;)Lcom/google/android/gms/feedback/FeedbackOptions;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/feedback/FeedbackOptions$Builder;->mAccountInUse:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/feedback/FeedbackOptions;->zza(Lcom/google/android/gms/feedback/FeedbackOptions;Ljava/lang/String;)Lcom/google/android/gms/feedback/FeedbackOptions;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/feedback/FeedbackOptions$Builder;->mDescription:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/feedback/FeedbackOptions;->zzb(Lcom/google/android/gms/feedback/FeedbackOptions;Ljava/lang/String;)Lcom/google/android/gms/feedback/FeedbackOptions;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/feedback/FeedbackOptions$Builder;->mPsdBundle:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/google/android/gms/feedback/FeedbackOptions;->zza(Lcom/google/android/gms/feedback/FeedbackOptions;Landroid/os/Bundle;)Lcom/google/android/gms/feedback/FeedbackOptions;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/feedback/FeedbackOptions$Builder;->mCategoryTag:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/feedback/FeedbackOptions;->zzc(Lcom/google/android/gms/feedback/FeedbackOptions;Ljava/lang/String;)Lcom/google/android/gms/feedback/FeedbackOptions;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/feedback/FeedbackOptions$Builder;->mFileTeleporters:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/google/android/gms/feedback/FeedbackOptions;->zza(Lcom/google/android/gms/feedback/FeedbackOptions;Ljava/util/ArrayList;)Lcom/google/android/gms/feedback/FeedbackOptions;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/feedback/FeedbackOptions$Builder;->mExcludePii:Z

    invoke-static {v0, v1}, Lcom/google/android/gms/feedback/FeedbackOptions;->zza(Lcom/google/android/gms/feedback/FeedbackOptions;Z)Lcom/google/android/gms/feedback/FeedbackOptions;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/feedback/FeedbackOptions$Builder;->mThemeSettings:Lcom/google/android/gms/feedback/ThemeSettings;

    invoke-static {v0, v1}, Lcom/google/android/gms/feedback/FeedbackOptions;->zza(Lcom/google/android/gms/feedback/FeedbackOptions;Lcom/google/android/gms/feedback/ThemeSettings;)Lcom/google/android/gms/feedback/FeedbackOptions;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/feedback/FeedbackOptions$Builder;->mLogOptions:Lcom/google/android/gms/feedback/LogOptions;

    invoke-static {v0, v1}, Lcom/google/android/gms/feedback/FeedbackOptions;->zza(Lcom/google/android/gms/feedback/FeedbackOptions;Lcom/google/android/gms/feedback/LogOptions;)Lcom/google/android/gms/feedback/FeedbackOptions;

    move-result-object v0

    return-object v0
.end method

.method public setAccountInUse(Ljava/lang/String;)Lcom/google/android/gms/feedback/FeedbackOptions$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/feedback/FeedbackOptions$Builder;->mAccountInUse:Ljava/lang/String;

    return-object p0
.end method

.method public setCategoryTag(Ljava/lang/String;)Lcom/google/android/gms/feedback/FeedbackOptions$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/feedback/FeedbackOptions$Builder;->mCategoryTag:Ljava/lang/String;

    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/android/gms/feedback/FeedbackOptions$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/feedback/FeedbackOptions$Builder;->mDescription:Ljava/lang/String;

    return-object p0
.end method

.method public setExcludePii(Z)Lcom/google/android/gms/feedback/FeedbackOptions$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/feedback/FeedbackOptions$Builder;->mExcludePii:Z

    return-object p0
.end method

.method public setScreenshot(Landroid/graphics/Bitmap;)Lcom/google/android/gms/feedback/FeedbackOptions$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/feedback/FeedbackOptions$Builder;->zzaFX:Landroid/graphics/Bitmap;

    return-object p0
.end method