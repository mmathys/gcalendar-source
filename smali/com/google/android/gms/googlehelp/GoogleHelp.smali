.class public final Lcom/google/android/gms/googlehelp/GoogleHelp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/googlehelp/GoogleHelp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mPsdBundle:Landroid/os/Bundle;

.field mThemeSettings:Lcom/google/android/gms/feedback/ThemeSettings;

.field final mVersionCode:I

.field zzaSS:Ljava/lang/String;

.field zzaST:Landroid/accounts/Account;

.field zzaSU:Ljava/lang/String;

.field zzaSV:I

.field zzaSW:I

.field zzaSX:Z

.field zzaSY:Z

.field zzaSZ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field zzaTa:Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field zzaTb:Landroid/graphics/Bitmap;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field zzaTc:[B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field zzaTd:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field zzaTe:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field zzaTf:Ljava/lang/String;

.field zzaTg:Landroid/net/Uri;

.field zzaTh:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/googlehelp/internal/common/OverflowMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field zzaTi:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field zzaTj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/googlehelp/OfflineSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field zzaTk:Z

.field zzaTl:Lcom/google/android/gms/feedback/ErrorReport;

.field zzaTm:Lcom/google/android/gms/googlehelp/internal/common/TogglingData;

.field zzaTn:I

.field zzaTo:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/googlehelp/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/googlehelp/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/googlehelp/GoogleHelp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;IIZZLjava/util/List;Landroid/os/Bundle;Landroid/graphics/Bitmap;[BIILjava/lang/String;Landroid/net/Uri;Ljava/util/List;ILcom/google/android/gms/feedback/ThemeSettings;Ljava/util/List;ZLcom/google/android/gms/feedback/ErrorReport;Lcom/google/android/gms/googlehelp/internal/common/TogglingData;ILandroid/app/PendingIntent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/accounts/Account;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "IIZZ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Landroid/graphics/Bitmap;",
            "[BII",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/googlehelp/internal/common/OverflowMenuItem;",
            ">;I",
            "Lcom/google/android/gms/feedback/ThemeSettings;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/googlehelp/OfflineSuggestion;",
            ">;Z",
            "Lcom/google/android/gms/feedback/ErrorReport;",
            "Lcom/google/android/gms/googlehelp/internal/common/TogglingData;",
            "I",
            "Landroid/app/PendingIntent;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/google/android/gms/feedback/ErrorReport;

    invoke-direct {v1}, Lcom/google/android/gms/feedback/ErrorReport;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->zzaTl:Lcom/google/android/gms/feedback/ErrorReport;

    iput p1, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->zzaSS:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->zzaST:Landroid/accounts/Account;

    iput-object p4, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->mPsdBundle:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->zzaSU:Ljava/lang/String;

    iput p6, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->zzaSV:I

    iput p7, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->zzaSW:I

    iput-boolean p8, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->zzaSX:Z

    iput-boolean p9, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->zzaSY:Z

    iput-object p10, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->zzaSZ:Ljava/util/List;

    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->zzaTo:Landroid/app/PendingIntent;

    iput-object p11, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->zzaTa:Landroid/os/Bundle;

    iput-object p12, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->zzaTb:Landroid/graphics/Bitmap;

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->zzaTc:[B

    move/from16 v0, p14

    iput v0, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->zzaTd:I

    move/from16 v0, p15

    iput v0, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->zzaTe:I

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->zzaTf:Ljava/lang/String;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->zzaTg:Landroid/net/Uri;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->zzaTh:Ljava/util/List;

    iget v1, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->mVersionCode:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    new-instance v1, Lcom/google/android/gms/feedback/ThemeSettings;

    invoke-direct {v1}, Lcom/google/android/gms/feedback/ThemeSettings;-><init>()V

    move/from16 v0, p19

    invoke-virtual {v1, v0}, Lcom/google/android/gms/feedback/ThemeSettings;->setTheme(I)Lcom/google/android/gms/feedback/ThemeSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->mThemeSettings:Lcom/google/android/gms/feedback/ThemeSettings;

    :goto_0
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->zzaTj:Ljava/util/List;

    move/from16 v0, p22

    iput-boolean v0, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->zzaTk:Z

    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->zzaTl:Lcom/google/android/gms/feedback/ErrorReport;

    iget-object v1, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->zzaTl:Lcom/google/android/gms/feedback/ErrorReport;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->zzaTl:Lcom/google/android/gms/feedback/ErrorReport;

    const-string v2, "GoogleHelp"

    iput-object v2, v1, Lcom/google/android/gms/feedback/ErrorReport;->launcher:Ljava/lang/String;

    :cond_0
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->zzaTm:Lcom/google/android/gms/googlehelp/internal/common/TogglingData;

    move/from16 v0, p25

    iput v0, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->zzaTn:I

    return-void

    :cond_1
    if-nez p20, :cond_2

    new-instance p20, Lcom/google/android/gms/feedback/ThemeSettings;

    invoke-direct/range {p20 .. p20}, Lcom/google/android/gms/feedback/ThemeSettings;-><init>()V

    :cond_2
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->mThemeSettings:Lcom/google/android/gms/feedback/ThemeSettings;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 27

    const/4 v1, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    const/16 v19, 0x0

    const/16 v20, 0x0

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    const/16 v22, 0x0

    new-instance v23, Lcom/google/android/gms/feedback/ErrorReport;

    invoke-direct/range {v23 .. v23}, Lcom/google/android/gms/feedback/ErrorReport;-><init>()V

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v26}, Lcom/google/android/gms/googlehelp/GoogleHelp;-><init>(ILjava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;IIZZLjava/util/List;Landroid/os/Bundle;Landroid/graphics/Bitmap;[BIILjava/lang/String;Landroid/net/Uri;Ljava/util/List;ILcom/google/android/gms/feedback/ThemeSettings;Ljava/util/List;ZLcom/google/android/gms/feedback/ErrorReport;Lcom/google/android/gms/googlehelp/internal/common/TogglingData;ILandroid/app/PendingIntent;)V

    return-void
.end method

.method public static getScreenshot(Landroid/app/Activity;)Landroid/graphics/Bitmap;
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    const-string v1, "GOOGLEHELP_GoogleHelp"

    const-string v2, "Get screenshot failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/google/android/gms/googlehelp/GoogleHelp;
    .locals 1

    new-instance v0, Lcom/google/android/gms/googlehelp/GoogleHelp;

    invoke-direct {v0, p0}, Lcom/google/android/gms/googlehelp/GoogleHelp;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public addAdditionalOverflowMenuItem(ILjava/lang/String;Landroid/content/Intent;)Lcom/google/android/gms/googlehelp/GoogleHelp;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->zzaTh:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/googlehelp/internal/common/OverflowMenuItem;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/gms/googlehelp/internal/common/OverflowMenuItem;-><init>(ILjava/lang/String;Landroid/content/Intent;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public buildHelpIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.googlehelp.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_GOOGLE_HELP"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFallbackSupportUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->zzaTg:Landroid/net/Uri;

    return-object v0
.end method

.method public getTogglingData()Lcom/google/android/gms/googlehelp/internal/common/TogglingData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->zzaTm:Lcom/google/android/gms/googlehelp/internal/common/TogglingData;

    return-object v0
.end method

.method public setFallbackSupportUri(Landroid/net/Uri;)Lcom/google/android/gms/googlehelp/GoogleHelp;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->zzaTg:Landroid/net/Uri;

    return-object p0
.end method

.method public setFeedbackOptions(Lcom/google/android/gms/feedback/FeedbackOptions;Ljava/io/File;)Lcom/google/android/gms/googlehelp/GoogleHelp;
    .locals 2

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzox;->zza(Lcom/google/android/gms/feedback/FeedbackOptions;Ljava/io/File;)Lcom/google/android/gms/feedback/ErrorReport;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->zzaTl:Lcom/google/android/gms/feedback/ErrorReport;

    iget-object v0, p0, Lcom/google/android/gms/googlehelp/GoogleHelp;->zzaTl:Lcom/google/android/gms/feedback/ErrorReport;

    const-string v1, "GoogleHelp"

    iput-object v1, v0, Lcom/google/android/gms/feedback/ErrorReport;->launcher:Ljava/lang/String;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/googlehelp/zzb;->zza(Lcom/google/android/gms/googlehelp/GoogleHelp;Landroid/os/Parcel;I)V

    return-void
.end method
