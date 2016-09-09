.class public abstract Lcom/android/calendar/WhatsNewFactory;
.super Ljava/lang/Object;
.source "WhatsNewFactory.java"


# static fields
.field public static final WHATS_NEW_REQUEST_CODE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/android/calendar/WhatsNewFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/android/calendar/WhatsNewFactory;->WHATS_NEW_REQUEST_CODE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract checkForAccountChanges(Landroid/app/Activity;)V
.end method

.method public abstract onCompleteOobe(Landroid/content/Context;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/accounts/Account;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract shouldShowInitialWelcome(Lcom/android/calendar/event/LaunchInfoActivity;)Z
.end method

.method public abstract showInitialWelcome(Lcom/android/calendar/event/LaunchInfoActivity;)V
.end method

.method protected startActivityClassForResult(Ljava/lang/Class;Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 58
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 60
    sget v1, Lcom/android/calendar/WhatsNewFactory;->WHATS_NEW_REQUEST_CODE:I

    invoke-virtual {p2, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 61
    return-void
.end method
