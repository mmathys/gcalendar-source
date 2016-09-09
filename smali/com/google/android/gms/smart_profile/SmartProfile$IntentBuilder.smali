.class public Lcom/google/android/gms/smart_profile/SmartProfile$IntentBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/smart_profile/SmartProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentBuilder"
.end annotation


# instance fields
.field private final mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/smart_profile/SmartProfile$IntentBuilder;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/smart_profile/SmartProfile$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/smart_profile/SmartProfile$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "com.google.android.gms.people.smart_profile.ACTION_SHOW_PROFILE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public build()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/smart_profile/SmartProfile$IntentBuilder;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public setApplicationId(I)Lcom/google/android/gms/smart_profile/SmartProfile$IntentBuilder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/smart_profile/SmartProfile$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "com.google.android.gms.people.smart_profile.APPLICATION_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p0
.end method

.method public setAvatarUrl(Ljava/lang/String;)Lcom/google/android/gms/smart_profile/SmartProfile$IntentBuilder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/smart_profile/SmartProfile$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "com.google.android.gms.people.smart_profile.AVATAR_URL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/android/gms/smart_profile/SmartProfile$IntentBuilder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/smart_profile/SmartProfile$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "com.google.android.gms.people.smart_profile.DISPLAY_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public setQualifiedId(Ljava/lang/String;)Lcom/google/android/gms/smart_profile/SmartProfile$IntentBuilder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/smart_profile/SmartProfile$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "com.google.android.gms.people.smart_profile.QUALIFIED_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public setViewerAccountName(Ljava/lang/String;)Lcom/google/android/gms/smart_profile/SmartProfile$IntentBuilder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/smart_profile/SmartProfile$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "com.google.android.gms.people.smart_profile.VIEWER_ACCOUNT_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method
