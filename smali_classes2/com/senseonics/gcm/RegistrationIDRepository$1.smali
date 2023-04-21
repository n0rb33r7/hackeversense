.class Lcom/senseonics/gcm/RegistrationIDRepository$1;
.super Ljava/lang/Object;
.source "RegistrationIDRepository.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/senseonics/gcm/RegistrationIDRepository;->getMyFollowerGCMRegIDsThenPostGCM(Lcom/senseonics/util/TransmitterMessageCode;Ljava/util/Calendar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Lcom/senseonics/gcm/FollowerGCMInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/senseonics/gcm/RegistrationIDRepository;

.field final synthetic val$code:Lcom/senseonics/util/TransmitterMessageCode;


# direct methods
.method constructor <init>(Lcom/senseonics/gcm/RegistrationIDRepository;Lcom/senseonics/util/TransmitterMessageCode;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/senseonics/gcm/RegistrationIDRepository$1;->this$0:Lcom/senseonics/gcm/RegistrationIDRepository;

    iput-object p2, p0, Lcom/senseonics/gcm/RegistrationIDRepository$1;->val$code:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/senseonics/gcm/FollowerGCMInfo;)V
    .locals 6

    .line 54
    invoke-virtual {p1}, Lcom/senseonics/gcm/FollowerGCMInfo;->getDeviceGCMRegCode()Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-virtual {p1}, Lcom/senseonics/gcm/FollowerGCMInfo;->getStatus()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, ""

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/senseonics/gcm/RegistrationIDRepository$1;->this$0:Lcom/senseonics/gcm/RegistrationIDRepository;

    invoke-static {v1}, Lcom/senseonics/gcm/RegistrationIDRepository;->-$$Nest$fgetgcmRepository(Lcom/senseonics/gcm/RegistrationIDRepository;)Lcom/senseonics/gcm/GCMRepository;

    move-result-object v1

    iget-object v2, p0, Lcom/senseonics/gcm/RegistrationIDRepository$1;->this$0:Lcom/senseonics/gcm/RegistrationIDRepository;

    invoke-static {v2}, Lcom/senseonics/gcm/RegistrationIDRepository;->-$$Nest$fgetcontext(Lcom/senseonics/gcm/RegistrationIDRepository;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/senseonics/gcm/RegistrationIDRepository$1;->val$code:Lcom/senseonics/util/TransmitterMessageCode;

    .line 60
    invoke-virtual {v3}, Lcom/senseonics/util/TransmitterMessageCode;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/senseonics/gcm/RegistrationIDRepository$1;->this$0:Lcom/senseonics/gcm/RegistrationIDRepository;

    invoke-static {v4}, Lcom/senseonics/gcm/RegistrationIDRepository;->-$$Nest$fgetaccountConstants(Lcom/senseonics/gcm/RegistrationIDRepository;)Lcom/senseonics/util/AccountConstants;

    move-result-object v4

    .line 61
    invoke-virtual {v4}, Lcom/senseonics/util/AccountConstants;->getAccountRealNameFromPreference()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/senseonics/gcm/RegistrationIDRepository$1;->this$0:Lcom/senseonics/gcm/RegistrationIDRepository;

    invoke-static {v4}, Lcom/senseonics/gcm/RegistrationIDRepository;->-$$Nest$fgetcontext(Lcom/senseonics/gcm/RegistrationIDRepository;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/senseonics/gcm/RegistrationIDRepository$1;->val$code:Lcom/senseonics/util/TransmitterMessageCode;

    invoke-virtual {v5}, Lcom/senseonics/util/TransmitterMessageCode;->getTitle()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 62
    invoke-virtual {p1}, Lcom/senseonics/gcm/FollowerGCMInfo;->getPlatformID()Ljava/lang/Integer;

    move-result-object p1

    .line 58
    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/senseonics/gcm/GCMRepository;->postGCM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 51
    check-cast p1, Lcom/senseonics/gcm/FollowerGCMInfo;

    invoke-virtual {p0, p1}, Lcom/senseonics/gcm/RegistrationIDRepository$1;->call(Lcom/senseonics/gcm/FollowerGCMInfo;)V

    return-void
.end method
