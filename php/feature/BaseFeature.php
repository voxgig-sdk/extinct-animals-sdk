<?php
declare(strict_types=1);

// ExtinctAnimals SDK base feature

class ExtinctAnimalsBaseFeature
{
    public string $version;
    public string $name;
    public bool $active;

    public function __construct()
    {
        $this->version = '0.0.1';
        $this->name = 'base';
        $this->active = true;
    }

    public function get_version(): string { return $this->version; }
    public function get_name(): string { return $this->name; }
    public function get_active(): bool { return $this->active; }

    public function init(ExtinctAnimalsContext $ctx, array $options): void {}
    public function PostConstruct(ExtinctAnimalsContext $ctx): void {}
    public function PostConstructEntity(ExtinctAnimalsContext $ctx): void {}
    public function SetData(ExtinctAnimalsContext $ctx): void {}
    public function GetData(ExtinctAnimalsContext $ctx): void {}
    public function GetMatch(ExtinctAnimalsContext $ctx): void {}
    public function SetMatch(ExtinctAnimalsContext $ctx): void {}
    public function PrePoint(ExtinctAnimalsContext $ctx): void {}
    public function PreSpec(ExtinctAnimalsContext $ctx): void {}
    public function PreRequest(ExtinctAnimalsContext $ctx): void {}
    public function PreResponse(ExtinctAnimalsContext $ctx): void {}
    public function PreResult(ExtinctAnimalsContext $ctx): void {}
    public function PreDone(ExtinctAnimalsContext $ctx): void {}
    public function PreUnexpected(ExtinctAnimalsContext $ctx): void {}
}
